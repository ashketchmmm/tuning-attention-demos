{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 77.0, 1071.0, 713.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 20.0, 1080.0, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.0, 20.0, 1070.0, 34.0 ],
                    "text": "MOTION MUSIC / Max 9"
                }
            },
            {
                "box": {
                    "id": "udp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 250.0, 180.0, 22.0 ],
                    "text": "udpreceive 7500"
                }
            },
            {
                "box": {
                    "id": "engine",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 20.0, 320.0, 190.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "motion_engine.js",
                        "parameter_enable": 0
                    },
                    "text": "js motion_engine.js"
                }
            },
            {
                "box": {
                    "id": "lb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 240.0, 250.0, 75.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 240.0, 280.0, 40.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "clock",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 240.0, 320.0, 85.0, 22.0 ],
                    "text": "qmetro 20"
                }
            },
            {
                "box": {
                    "id": "rates",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 20.0, 370.0, 180.0, 22.0 ],
                    "text": "route r1 r2 r3"
                }
            },
            {
                "box": {
                    "id": "weights",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 240.0, 370.0, 180.0, 22.0 ],
                    "text": "route w1 w2 w3"
                }
            },
            {
                "box": {
                    "id": "transport",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 450.0, 370.0, 180.0, 22.0 ],
                    "text": "s #0transport"
                }
            },
            {
                "box": {
                    "id": "gate",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 670.0, 370.0, 180.0, 22.0 ],
                    "text": "sig~ 0."
                }
            },
            {
                "box": {
                    "id": "vol",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 800.0, 370.0, 180.0, 22.0 ],
                    "text": "line~ 0.1"
                }
            },
            {
                "box": {
                    "id": "status",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "int", "int", "float", "float", "int" ],
                    "patching_rect": [ 450.0, 420.0, 180.0, 22.0 ],
                    "text": "unpack i i f f i"
                }
            },
            {
                "box": {
                    "id": "label0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 260.0, 190.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.0, 141.0, 190.0, 20.0 ],
                    "text": "BODY VISIBLE"
                }
            },
            {
                "box": {
                    "id": "display0",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 450.0, 110.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.0, 171.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "label1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 240.0, 260.0, 190.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 240.0, 141.0, 190.0, 20.0 ],
                    "text": "TRACK (1 / 2 / 3)"
                }
            },
            {
                "box": {
                    "id": "display1",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 240.0, 450.0, 110.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 240.0, 171.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "label2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 455.0, 260.0, 190.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 455.0, 141.0, 190.0, 20.0 ],
                    "text": "ARM SPEED"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "display2",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 455.0, 450.0, 110.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 455.0, 171.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "label3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 260.0, 190.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 670.0, 141.0, 190.0, 20.0 ],
                    "text": "LEG SPEED"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "display3",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 670.0, 450.0, 110.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 670.0, 171.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "label4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 885.0, 260.0, 190.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 885.0, 141.0, 190.0, 20.0 ],
                    "text": "DIRECTION (+1 / -1)"
                }
            },
            {
                "box": {
                    "id": "display4",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 885.0, 450.0, 110.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 885.0, 171.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 17.0,
                    "id": "tracklabel1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 190.0, 330.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.0, 71.0, 330.0, 26.0 ],
                    "text": "TRACK 1 — ARMS"
                }
            },
            {
                "box": {
                    "id": "replace1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 225.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.0, 106.0, 95.0, 22.0 ],
                    "text": "replace"
                }
            },
            {
                "box": {
                    "id": "buffer1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 25.0, 500.0, 320.0, 22.0 ],
                    "text": "buffer~ #0arms demo_arms.wav"
                }
            },
            {
                "box": {
                    "id": "ready1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 535.0, 80.0, 22.0 ],
                    "text": "ready 1"
                }
            },
            {
                "box": {
                    "id": "rate1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.0, 570.0, 70.0, 22.0 ],
                    "text": "sig~ 1."
                }
            },
            {
                "box": {
                    "id": "tr1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 110.0, 570.0, 130.0, 22.0 ],
                    "text": "r #0transport"
                }
            },
            {
                "box": {
                    "id": "groove1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 25.0, 610.0, 300.0, 22.0 ],
                    "text": "groove~ #0arms 2 @loop 1"
                }
            },
            {
                "box": {
                    "id": "weight1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 265.0, 570.0, 80.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "sum1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.0, 650.0, 50.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "half1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.0, 685.0, 65.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "gain1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.0, 720.0, 50.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 17.0,
                    "id": "tracklabel2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 395.0, 190.0, 330.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 395.0, 71.0, 330.0, 26.0 ],
                    "text": "TRACK 2 — LEGS"
                }
            },
            {
                "box": {
                    "id": "replace2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 395.0, 225.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 395.0, 106.0, 95.0, 22.0 ],
                    "text": "replace"
                }
            },
            {
                "box": {
                    "id": "buffer2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 395.0, 500.0, 320.0, 22.0 ],
                    "text": "buffer~ #0legs demo_legs.wav"
                }
            },
            {
                "box": {
                    "id": "ready2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 395.0, 535.0, 80.0, 22.0 ],
                    "text": "ready 2"
                }
            },
            {
                "box": {
                    "id": "rate2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 395.0, 570.0, 70.0, 22.0 ],
                    "text": "sig~ 1."
                }
            },
            {
                "box": {
                    "id": "tr2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 570.0, 130.0, 22.0 ],
                    "text": "r #0transport"
                }
            },
            {
                "box": {
                    "id": "groove2",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 395.0, 610.0, 300.0, 22.0 ],
                    "text": "groove~ #0legs 2 @loop 1"
                }
            },
            {
                "box": {
                    "id": "weight2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 635.0, 570.0, 80.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "sum2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 395.0, 650.0, 50.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "half2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 395.0, 685.0, 65.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "gain2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 395.0, 720.0, 50.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 17.0,
                    "id": "tracklabel3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 765.0, 190.0, 330.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 765.0, 71.0, 330.0, 26.0 ],
                    "text": "TRACK 3 — CALM"
                }
            },
            {
                "box": {
                    "id": "replace3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 765.0, 225.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 765.0, 106.0, 95.0, 22.0 ],
                    "text": "replace"
                }
            },
            {
                "box": {
                    "id": "buffer3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 765.0, 500.0, 320.0, 22.0 ],
                    "text": "buffer~ #0calm demo_calm.wav"
                }
            },
            {
                "box": {
                    "id": "ready3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 765.0, 535.0, 80.0, 22.0 ],
                    "text": "ready 3"
                }
            },
            {
                "box": {
                    "id": "rate3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 765.0, 570.0, 70.0, 22.0 ],
                    "text": "sig~ 1."
                }
            },
            {
                "box": {
                    "id": "tr3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 850.0, 570.0, 130.0, 22.0 ],
                    "text": "r #0transport"
                }
            },
            {
                "box": {
                    "id": "groove3",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 765.0, 610.0, 300.0, 22.0 ],
                    "text": "groove~ #0calm 2 @loop 1"
                }
            },
            {
                "box": {
                    "id": "weight3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1005.0, 570.0, 80.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "sum3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 765.0, 650.0, 50.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "half3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 765.0, 685.0, 65.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "gain3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 765.0, 720.0, 50.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "mixA",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 20.0, 770.0, 50.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mixB",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 120.0, 770.0, 50.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "master",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 240.0, 770.0, 50.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "limit",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 330.0, 770.0, 150.0, 22.0 ],
                    "text": "clip~ -0.18 0.18"
                }
            },
            {
                "box": {
                    "id": "mute",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 520.0, 770.0, 50.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 770.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.0, 219.0, 50.0, 50.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "audionote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 90.0, 380.0, 450.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 90.0, 224.0, 450.0, 25.0 ],
                    "text": "AUDIO ON / OFF — click the speaker icon"
                }
            },
            {
                "box": {
                    "id": "reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 680.0, 250.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 885.0, 224.0, 120.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "params",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.0, 320.0, 230.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 25.0, 292.0, 255.0, 22.0 ],
                    "text": "threshold 0.45 0.45 0.18"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "ready1", 0 ],
                    "source": [ "buffer1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ready2", 0 ],
                    "source": [ "buffer2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ready3", 0 ],
                    "source": [ "buffer3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "clock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gate", 0 ],
                    "source": [ "engine", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rates", 0 ],
                    "source": [ "engine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status", 0 ],
                    "source": [ "engine", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "transport", 0 ],
                    "source": [ "engine", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vol", 0 ],
                    "source": [ "engine", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weights", 0 ],
                    "source": [ "engine", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mixA", 0 ],
                    "source": [ "gain1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mixA", 1 ],
                    "source": [ "gain2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mixB", 1 ],
                    "source": [ "gain3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mute", 1 ],
                    "source": [ "gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum1", 1 ],
                    "source": [ "groove1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum1", 0 ],
                    "source": [ "groove1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum2", 1 ],
                    "source": [ "groove2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum2", 0 ],
                    "source": [ "groove2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum3", 1 ],
                    "source": [ "groove3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum3", 0 ],
                    "source": [ "groove3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain1", 0 ],
                    "source": [ "half1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain2", 0 ],
                    "source": [ "half2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain3", 0 ],
                    "source": [ "half3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "on", 0 ],
                    "source": [ "lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mute", 0 ],
                    "source": [ "limit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "limit", 0 ],
                    "source": [ "master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mixB", 0 ],
                    "source": [ "mixA", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "master", 0 ],
                    "source": [ "mixB", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 0,
                    "source": [ "mute", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 1,
                    "source": [ "mute", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clock", 0 ],
                    "source": [ "on", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "params", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove1", 0 ],
                    "source": [ "rate1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove2", 0 ],
                    "source": [ "rate2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove3", 0 ],
                    "source": [ "rate3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rate1", 0 ],
                    "source": [ "rates", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rate2", 0 ],
                    "source": [ "rates", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rate3", 0 ],
                    "source": [ "rates", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "ready1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "ready2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "ready3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buffer1", 0 ],
                    "source": [ "replace1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buffer2", 0 ],
                    "source": [ "replace2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buffer3", 0 ],
                    "source": [ "replace3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "display0", 0 ],
                    "source": [ "status", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "display1", 0 ],
                    "source": [ "status", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "display2", 0 ],
                    "source": [ "status", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "display3", 0 ],
                    "source": [ "status", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "display4", 0 ],
                    "source": [ "status", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "half1", 0 ],
                    "source": [ "sum1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "half2", 0 ],
                    "source": [ "sum2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "half3", 0 ],
                    "source": [ "sum3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove1", 0 ],
                    "source": [ "tr1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove2", 0 ],
                    "source": [ "tr2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove3", 0 ],
                    "source": [ "tr3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "udp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "master", 1 ],
                    "source": [ "vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain1", 1 ],
                    "source": [ "weight1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain2", 1 ],
                    "source": [ "weight2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain3", 1 ],
                    "source": [ "weight3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weight1", 0 ],
                    "source": [ "weights", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weight2", 0 ],
                    "source": [ "weights", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weight3", 0 ],
                    "source": [ "weights", 2 ]
                }
            }
        ],
        "autosave": 0
    }
}