// Max 9 built-in js runtime. No external packages.
autowatch = 1;
inlets = 1;
outlets = 6;
var joints = {}, visible = false, heartbeat = 0, active = false;
var loaded = [false,false,false], track = 3, candidate = 3, candidateAt = 0;
var direction = 1, magnitude = 1, lastTick = 0, lastWeights = -1;
var armThreshold = 0.45, legThreshold = 0.45, calmThreshold = 0.18;
var confidence = [], confidenceAt = 0, gain = 0.10;
function now(){return new Date().getTime();}
function clip(v,a,b){return Math.max(a,Math.min(b,v));}
function ready(index){loaded[index-1]=true; if(active) outlet(3,'startloop');}
function threshold(a,b,c){armThreshold=clip(a,0.05,4);legThreshold=clip(b,0.05,4);calmThreshold=clip(c,0.01,Math.min(armThreshold,legThreshold)*0.9);}
function reset(){joints={};confidence=[];confidenceAt=0;visible=false;heartbeat=0;halt();}
function halt(){
    outlet(2,0); outlet(3,'stop');
    active=false; joints={}; track=3; candidate=3; candidateAt=0;
    direction=1; magnitude=1; lastWeights=-1;
    outlet(4,[0,0,0,0,1]);
}
function anything(){
    var a=arrayfromargs(arguments), address=messagename, t=now();
    if(address.indexOf('/cv/pose/0/')!==0)return;
    var name=address.substring(11);
    if(name==='present'){
        visible=Number(a[0])===1;heartbeat=t;
        if(!visible)halt();
        return;
    }
    if(name==='visibility'){confidence=a;confidenceAt=t;return;}
    if(name==='norm'){
        var map={left_shoulder:11,right_shoulder:12,left_elbow:13,right_elbow:14,left_wrist:15,right_wrist:16,left_knee:25,right_knee:26,left_ankle:27,right_ankle:28};
        for(var k in map){var i=map[k]*3;if(a.length>=i+3)point(k,Number(a[i]),Number(a[i+1]),t);}
        return;
    }
    if(a.length>=2)point(name,Number(a[0]),Number(a[1]),t);
}
function point(name,x,y,t){
    if(!visible || !isFinite(x) || !isFinite(y))return;
    var old=joints[name];
    // Many senders publish both bulk and named points in the same frame.
    if(old && t-old.t<8)return;
    var v=0;
    if(old && t-old.t<250){
        var dt=(t-old.t)/1000, dx=x-old.x,dy=y-old.y;
        var raw=Math.sqrt(dx*dx+dy*dy)/Math.max(dt,0.008);
        var alpha=1-Math.exp(-dt/0.12);
        v=old.v+alpha*(clip(raw,0,5)-old.v);
    }
    joints[name]={x:x,y:y,t:t,v:v};
}
function usable(name,index,t){
    var p=joints[name];
    if(!p || t-p.t>220)return false;
    return !(confidence.length>=33 && t-confidenceAt<300 && Number(confidence[index])<0.5);
}
function group(names,indices,t){
    var sum=0,count=0;
    for(var i=0;i<names.length;i++)if(usable(names[i],indices[i],t)){
        var p=joints[names[i]];sum+=p.v*Math.exp(-Math.max(0,t-p.t-55)/130);count++;
    }
    return [count?sum/count:0,count>=2];
}
function bang(){
    var t=now(), dt=lastTick?clip((t-lastTick)/1000,0.001,0.1):0.02;lastTick=t;
    if(!visible || t-heartbeat>350){if(active)halt();return;}
    var A=group(['left_elbow','right_elbow','left_wrist','right_wrist'],[13,14,15,16],t);
    var L=group(['left_knee','right_knee','left_ankle','right_ankle'],[25,26,27,28],t);
    var arms=A[1]&&A[0]>armThreshold, legs=L[1]&&L[0]>legThreshold;
    var target=track;
    if(arms&&legs){target=A[0]/armThreshold>=L[0]/legThreshold?1:2;}
    else if(arms)target=1;
    else if(legs)target=2;
    else if((!A[1]||A[0]<calmThreshold)&&(!L[1]||L[0]<calmThreshold))target=3;
    // Moderate movement returns gently to calm after a longer hold.
    else target=3;
    if(target!==candidate){candidate=target;candidateAt=t;}
    var hold=target===3?700:180;
    if(target!==track && t-candidateAt>=hold)track=target;
    // Wrist order relative to shoulder order works with either camera mirroring.
    direction=1;
    if(usable('left_wrist',15,t)&&usable('right_wrist',16,t)&&usable('left_shoulder',11,t)&&usable('right_shoulder',12,t)){
        var shoulder=joints.left_shoulder.x-joints.right_shoulder.x;
        var wrist=joints.left_wrist.x-joints.right_wrist.x;
        if(Math.abs(shoulder)>0.025 && wrist*shoulder<0 && Math.abs(wrist)>0.015)direction=-1;
    }
    var desired=1+clip((A[0]-armThreshold)/Math.max(0.2,1.8-armThreshold),0,1)*1.0;
    magnitude+= (1-Math.exp(-dt/0.15))*(desired-magnitude);
    magnitude=clip(magnitude,1,2);
    outlet(0,['r1',direction*magnitude]);outlet(0,['r2',direction]);outlet(0,['r3',direction]);
    var chosen=track;
    if(!loaded[chosen-1]){chosen=0;for(var n=2;n>=0;n--)if(loaded[n]){chosen=n+1;break;}}
    if(!chosen){if(active)halt();return;}
    if(!active){outlet(3,'startloop');active=true;lastWeights=-1;}
    if(chosen!==lastWeights){for(var i=1;i<=3;i++)outlet(1,['w'+i,i===chosen?1:0,250]);lastWeights=chosen;}
    var fullArms=usable('left_elbow',13,t)&&usable('right_elbow',14,t)&&usable('left_wrist',15,t)&&usable('right_wrist',16,t);
    var fullLegs=usable('left_knee',25,t)&&usable('right_knee',26,t)&&usable('left_ankle',27,t)&&usable('right_ankle',28,t);
    outlet(5,[arms&&legs&&fullArms&&fullLegs?0.16:0.10,180]);
    outlet(2,1);
    outlet(4,[1,chosen,A[0],L[0],direction]);
}
