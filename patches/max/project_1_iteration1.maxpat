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
        "boxes": [
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 15.0, 400.0, 27.0 ],
                    "text": "MEDIAPIPE MOTION MUSIC - MAX 9"
                }
            },
            {
                "box": {
                    "id": "info",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 45.0, 720.0, 20.0 ],
                    "text": "OSC 7500 | Arms: Track 1 | Legs: Track 2 | Calm: Track 3 | Wrist crossing: reverse"
                }
            },
            {
                "box": {
                    "id": "udp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 85.0, 120.0, 22.0 ],
                    "text": "udpreceive 7500"
                }
            },
            {
                "box": {
                    "id": "routecv",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 25.0, 119.0, 70.0, 22.0 ],
                    "text": "route cv"
                }
            },
            {
                "box": {
                    "id": "routepose",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 25.0, 149.0, 80.0, 22.0 ],
                    "text": "route pose"
                }
            },
            {
                "box": {
                    "id": "routeslot",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 25.0, 179.0, 65.0, 22.0 ],
                    "text": "route 0"
                }
            },
            {
                "box": {
                    "id": "landmarks",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 9,
                    "outlettype": [ "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 25.0, 209.0, 530.0, 22.0 ],
                    "text": "route present left_elbow right_elbow left_wrist right_wrist left_ankle right_ankle nose"
                }
            },
            {
                "box": {
                    "id": "landmarkhelp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 239.0, 850.0, 20.0 ],
                    "text": "Landmark outlets: 1 present, 2 left elbow, 3 right elbow, 4 left wrist, 5 right wrist, 6 left ankle, 7 right ankle, 8 nose"
                }
            },
            {
                "box": {
                    "id": "elbowL",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 25.0, 274.0, 95.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "elbowR",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 140.0, 274.0, 95.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "wristL",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 255.0, 274.0, 95.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "wristR",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 370.0, 274.0, 95.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "ankleL",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 485.0, 274.0, 95.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "ankleR",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 600.0, 274.0, 95.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "nose",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 715.0, 274.0, 95.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "motionnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 314.0, 850.0, 20.0 ],
                    "text": "Motion detector extension: compare successive XYZ samples, calculate displacement, smooth, and compare with adjustable velocity thresholds."
                }
            },
            {
                "box": {
                    "id": "audioheading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 395.0, 350.0, 20.0 ],
                    "text": "THREE USER-SELECTABLE MP3 TRACKS"
                }
            },
            {
                "box": {
                    "id": "buffer1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 25.0, 425.0, 150.0, 22.0 ],
                    "text": "buffer~ motionTrack1"
                }
            },
            {
                "box": {
                    "id": "replace1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 185.0, 425.0, 55.0, 22.0 ],
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
                    "patching_rect": [ 25.0, 460.0, 150.0, 22.0 ],
                    "text": "buffer~ motionTrack2"
                }
            },
            {
                "box": {
                    "id": "replace2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 185.0, 460.0, 55.0, 22.0 ],
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
                    "patching_rect": [ 25.0, 495.0, 150.0, 22.0 ],
                    "text": "buffer~ motionTrack3"
                }
            },
            {
                "box": {
                    "id": "replace3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 185.0, 495.0, 55.0, 22.0 ],
                    "text": "replace"
                }
            },
            {
                "box": {
                    "id": "loadhelp",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 525.0, 330.0, 20.0 ],
                    "text": "Click each replace message and choose an MP3 file."
                }
            },
            {
                "box": {
                    "id": "groove1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 360.0, 425.0, 170.0, 22.0 ],
                    "text": "groove~ motionTrack1 2"
                }
            },
            {
                "box": {
                    "id": "groove2",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 360.0, 460.0, 170.0, 22.0 ],
                    "text": "groove~ motionTrack2 2"
                }
            },
            {
                "box": {
                    "id": "groove3",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 360.0, 495.0, 170.0, 22.0 ],
                    "text": "groove~ motionTrack3 2"
                }
            },
            {
                "box": {
                    "id": "ratecomment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 580.0, 395.0, 350.0, 20.0 ],
                    "text": "Playback rate: positive = forward, negative = reverse"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rate",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 580.0, 425.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "rateclip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 665.0, 425.0, 75.0, 22.0 ],
                    "text": "clip -2. 2."
                }
            },
            {
                "box": {
                    "id": "ratesig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 755.0, 425.0, 65.0, 22.0 ],
                    "text": "sig~ 1."
                }
            },
            {
                "box": {
                    "id": "forward",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 580.0, 460.0, 35.0, 22.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "id": "reverse",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 625.0, 460.0, 40.0, 22.0 ],
                    "text": "-1."
                }
            },
            {
                "box": {
                    "id": "start1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 360.0, 550.0, 45.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "start2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 410.0, 550.0, 45.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "start3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 460.0, 550.0, 45.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "trackheading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 575.0, 300.0, 20.0 ],
                    "text": "TRACK SELECTOR: 1 arms, 2 legs, 3 calm"
                }
            },
            {
                "box": {
                    "id": "tracknum",
                    "maxclass": "number",
                    "maximum": 3,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 605.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "trackclip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 95.0, 605.0, 65.0, 22.0 ],
                    "text": "clip 1 3"
                }
            },
            {
                "box": {
                    "id": "selector",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.0, 605.0, 85.0, 22.0 ],
                    "text": "selector~ 3"
                }
            },
            {
                "box": {
                    "id": "volumeheading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 580.0, 510.0, 180.0, 20.0 ],
                    "text": "MASTER VOLUME"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "volume",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 580.0, 540.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "volclip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 665.0, 540.0, 80.0, 22.0 ],
                    "text": "clip 0. 0.6"
                }
            },
            {
                "box": {
                    "id": "volsig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 760.0, 540.0, 80.0, 22.0 ],
                    "text": "sig~ 0.25"
                }
            },
            {
                "box": {
                    "id": "master",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.0, 650.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 360.0, 700.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "headnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 580.0, 580.0, 490.0, 20.0 ],
                    "text": "Head-turn extension: map head orientation to a smoothed gain of approximately 0.25-0.35."
                }
            },
            {
                "box": {
                    "id": "crossnote",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 650.0, 320.0, 48.0 ],
                    "text": "Wrist-crossing extension: compare left/right wrist X positions across frames and change the rate sign when their order reverses."
                }
            },
            {
                "box": {
                    "id": "loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 25.0, 700.0, 65.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "defaulttrack",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 700.0, 35.0, 22.0 ],
                    "text": "3"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "tracknum", 0 ],
                    "source": [ "defaulttrack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ratesig", 0 ],
                    "source": [ "forward", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "selector", 1 ],
                    "source": [ "groove1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "selector", 2 ],
                    "source": [ "groove2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "selector", 3 ],
                    "source": [ "groove3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ankleL", 0 ],
                    "source": [ "landmarks", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ankleR", 0 ],
                    "source": [ "landmarks", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "elbowL", 0 ],
                    "source": [ "landmarks", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "elbowR", 0 ],
                    "source": [ "landmarks", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nose", 0 ],
                    "source": [ "landmarks", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wristL", 0 ],
                    "source": [ "landmarks", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wristR", 0 ],
                    "source": [ "landmarks", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defaulttrack", 0 ],
                    "source": [ "loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 0,
                    "source": [ "master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 1,
                    "source": [ "master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rateclip", 0 ],
                    "source": [ "rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ratesig", 0 ],
                    "source": [ "rateclip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove1", 0 ],
                    "order": 2,
                    "source": [ "ratesig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove2", 0 ],
                    "order": 1,
                    "source": [ "ratesig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove3", 0 ],
                    "order": 0,
                    "source": [ "ratesig", 0 ]
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
                    "destination": [ "ratesig", 0 ],
                    "source": [ "reverse", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "routepose", 0 ],
                    "source": [ "routecv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "routeslot", 0 ],
                    "source": [ "routepose", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landmarks", 0 ],
                    "source": [ "routeslot", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "master", 0 ],
                    "source": [ "selector", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove1", 0 ],
                    "source": [ "start1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove2", 0 ],
                    "source": [ "start2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove3", 0 ],
                    "source": [ "start3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "selector", 0 ],
                    "source": [ "trackclip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "trackclip", 0 ],
                    "source": [ "tracknum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "routecv", 0 ],
                    "source": [ "udp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volsig", 0 ],
                    "source": [ "volclip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "master", 1 ],
                    "source": [ "volsig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volclip", 0 ],
                    "source": [ "volume", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}