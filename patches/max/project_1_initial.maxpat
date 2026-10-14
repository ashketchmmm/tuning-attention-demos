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
        "rect": [ 34.0, 77.0, 1468.0, 713.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 494.0, 42.5, 208.0, 34.0 ],
                    "text": "uv run track-demo --dim 0 --osc max\n"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.5, 46.0, 450.0, 27.0 ],
                    "text": "PROJECT 1 DEMO"
                }
            },
            {
                "box": {
                    "id": "udp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 90.0, 120.0, 22.0 ],
                    "text": "udpreceive 7500"
                }
            },
            {
                "box": {
                    "id": "route",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 180.0, 90.0, 730.0, 22.0 ],
                    "text": "route /cv/pose/0/present /cv/pose/0/left_elbow /cv/pose/0/right_elbow /cv/pose/0/left_wrist /cv/pose/0/right_wrist"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "present_comment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 145.0, 140.0, 23.0 ],
                    "text": "BODY VISIBILITY"
                }
            },
            {
                "box": {
                    "id": "present_sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 30.0, 175.0, 60.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 215.0, 50.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 90.0, 215.0, 75.0, 22.0 ],
                    "text": "startloop"
                }
            },
            {
                "box": {
                    "id": "present_number",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 180.0, 175.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "cross_comment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 300.0, 145.0, 320.0, 23.0 ],
                    "text": "LEFT / RIGHT WRIST CROSSING → REVERSE"
                }
            },
            {
                "box": {
                    "id": "left_wrist_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 300.0, 175.0, 90.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "right_wrist_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 300.0, 220.0, 90.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "wrist_pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 195.0, 75.0, 22.0 ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "id": "wrist_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 520.0, 195.0, 80.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "wrist_difference",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 620.0, 195.0, 55.0, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "id": "wrist_compare",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 695.0, 195.0, 55.0, 22.0 ],
                    "text": "> 0."
                }
            },
            {
                "box": {
                    "id": "wrist_change",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 770.0, 195.0, 65.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "cross_select",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 855.0, 195.0, 55.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "direction_toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 930.0, 190.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "direction_select",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 970.0, 195.0, 60.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "forward_message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 180.0, 40.0, 22.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "id": "reverse_message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 215.0, 45.0, 22.0 ],
                    "text": "-1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "direction_number",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1115.0, 195.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "velocity_comment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 285.0, 350.0, 23.0 ],
                    "text": "ARM MOVEMENT VELOCITY → 0.5x TO 1.0x"
                }
            },
            {
                "box": {
                    "id": "left_elbow_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 30.0, 320.0, 90.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "left_x_stream",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 150.0, 310.0, 90.0, 22.0 ],
                    "text": "zl.stream 2"
                }
            },
            {
                "box": {
                    "id": "left_y_stream",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 150.0, 355.0, 90.0, 22.0 ],
                    "text": "zl.stream 2"
                }
            },
            {
                "box": {
                    "id": "left_x_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 260.0, 310.0, 80.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "left_y_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 260.0, 355.0, 80.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "left_x_difference",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 360.0, 310.0, 55.0, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "id": "left_y_difference",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 360.0, 355.0, 55.0, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "id": "left_x_trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 430.0, 310.0, 50.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "left_y_trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 430.0, 355.0, 50.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "left_x_square",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 500.0, 310.0, 55.0, 22.0 ],
                    "text": "* 0."
                }
            },
            {
                "box": {
                    "id": "left_y_square",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 500.0, 355.0, 55.0, 22.0 ],
                    "text": "* 0."
                }
            },
            {
                "box": {
                    "id": "left_velocity_pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 580.0, 330.0, 75.0, 22.0 ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "id": "left_velocity_sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 680.0, 330.0, 55.0, 22.0 ],
                    "text": "zl.sum"
                }
            },
            {
                "box": {
                    "id": "left_velocity_sqrt",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 755.0, 330.0, 50.0, 22.0 ],
                    "text": "sqrt"
                }
            },
            {
                "box": {
                    "id": "left_velocity_scale",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 825.0, 330.0, 60.0, 22.0 ],
                    "text": "* 60."
                }
            },
            {
                "box": {
                    "id": "right_elbow_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 30.0, 475.0, 90.0, 22.0 ],
                    "text": "unpack f f f"
                }
            },
            {
                "box": {
                    "id": "right_x_stream",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 150.0, 465.0, 90.0, 22.0 ],
                    "text": "zl.stream 2"
                }
            },
            {
                "box": {
                    "id": "right_y_stream",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 150.0, 510.0, 90.0, 22.0 ],
                    "text": "zl.stream 2"
                }
            },
            {
                "box": {
                    "id": "right_x_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 260.0, 465.0, 80.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "right_y_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 260.0, 510.0, 80.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "right_x_difference",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 360.0, 465.0, 55.0, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "id": "right_y_difference",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 360.0, 510.0, 55.0, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "id": "right_x_trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 430.0, 465.0, 50.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "right_y_trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 430.0, 510.0, 50.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "right_x_square",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 500.0, 465.0, 55.0, 22.0 ],
                    "text": "* 0."
                }
            },
            {
                "box": {
                    "id": "right_y_square",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 500.0, 510.0, 55.0, 22.0 ],
                    "text": "* 0."
                }
            },
            {
                "box": {
                    "id": "right_velocity_pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 580.0, 485.0, 75.0, 22.0 ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "id": "right_velocity_sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 680.0, 485.0, 55.0, 22.0 ],
                    "text": "zl.sum"
                }
            },
            {
                "box": {
                    "id": "right_velocity_sqrt",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 755.0, 485.0, 50.0, 22.0 ],
                    "text": "sqrt"
                }
            },
            {
                "box": {
                    "id": "right_velocity_scale",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 825.0, 485.0, 60.0, 22.0 ],
                    "text": "* 60."
                }
            },
            {
                "box": {
                    "id": "velocity_average_pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 400.0, 75.0, 22.0 ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "id": "velocity_average_sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1020.0, 400.0, 55.0, 22.0 ],
                    "text": "zl.sum"
                }
            },
            {
                "box": {
                    "id": "velocity_average",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1095.0, 400.0, 60.0, 22.0 ],
                    "text": "* 0.5"
                }
            },
            {
                "box": {
                    "id": "velocity_clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1175.0, 400.0, 85.0, 22.0 ],
                    "text": "clip 0. 0.75"
                }
            },
            {
                "box": {
                    "id": "velocity_to_speed",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1280.0, 400.0, 140.0, 22.0 ],
                    "text": "scale 0. 0.75 0.5 1."
                }
            },
            {
                "box": {
                    "id": "speed_direction",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1280.0, 450.0, 55.0, 22.0 ],
                    "text": "* 1."
                }
            },
            {
                "box": {
                    "id": "speed_line_message",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1280.0, 500.0, 100.0, 22.0 ],
                    "text": "pack 0.5 100"
                }
            },
            {
                "box": {
                    "id": "speed_line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1280.0, 550.0, 85.0, 22.0 ],
                    "text": "line~ 0.5"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "speed_display",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1380.0, 500.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "volume_comment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 595.0, 220.0, 23.0 ],
                    "text": "WRIST HEIGHT → VOLUME"
                }
            },
            {
                "box": {
                    "id": "height_pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 630.0, 75.0, 22.0 ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "id": "height_unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 130.0, 630.0, 80.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "height_sum",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 230.0, 630.0, 55.0, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "height_average",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 305.0, 630.0, 60.0, 22.0 ],
                    "text": "* 0.5"
                }
            },
            {
                "box": {
                    "id": "volume_scale",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 385.0, 630.0, 135.0, 22.0 ],
                    "text": "scale 0. 1. 0.9 0.05"
                }
            },
            {
                "box": {
                    "id": "volume_pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 540.0, 630.0, 100.0, 22.0 ],
                    "text": "pack 0.5 100"
                }
            },
            {
                "box": {
                    "id": "volume_line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 660.0, 630.0, 80.0, 22.0 ],
                    "text": "line~ 0.5"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "audio_comment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 710.0, 100.0, 23.0 ],
                    "text": "AUDIO"
                }
            },
            {
                "box": {
                    "id": "buffer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 30.0, 750.0, 300.0, 22.0 ],
                    "text": "buffer~ bodyAudio 1000 2"
                }
            },
            {
                "box": {
                    "id": "replace",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 350.0, 750.0, 65.0, 22.0 ],
                    "text": "replace"
                }
            },
            {
                "box": {
                    "id": "open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 750.0, 50.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "groove",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 530.0, 750.0, 180.0, 22.0 ],
                    "text": "groove~ bodyAudio 2 @loop 1"
                }
            },
            {
                "box": {
                    "id": "gain_l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 750.0, 750.0, 45.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "gain_r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 750.0, 790.0, 45.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "ezdac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 850.0, 750.0, 60.0, 60.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "direction_toggle", 0 ],
                    "source": [ "cross_select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "speed_direction", 1 ],
                    "source": [ "direction_number", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "forward_message", 0 ],
                    "source": [ "direction_select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "reverse_message", 0 ],
                    "source": [ "direction_select", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "direction_select", 0 ],
                    "source": [ "direction_toggle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "direction_number", 0 ],
                    "source": [ "forward_message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ezdac", 0 ],
                    "source": [ "gain_l", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ezdac", 1 ],
                    "source": [ "gain_r", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain_l", 0 ],
                    "source": [ "groove", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain_r", 0 ],
                    "source": [ "groove", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volume_scale", 0 ],
                    "source": [ "height_average", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "height_unpack", 0 ],
                    "source": [ "height_pak", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "height_average", 0 ],
                    "source": [ "height_sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "height_sum", 1 ],
                    "source": [ "height_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "height_sum", 0 ],
                    "source": [ "height_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_x_stream", 0 ],
                    "source": [ "left_elbow_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_y_stream", 0 ],
                    "source": [ "left_elbow_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_velocity_sum", 0 ],
                    "source": [ "left_velocity_pak", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "velocity_average_pak", 0 ],
                    "source": [ "left_velocity_scale", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_velocity_scale", 0 ],
                    "source": [ "left_velocity_sqrt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_velocity_sqrt", 0 ],
                    "source": [ "left_velocity_sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "height_pak", 0 ],
                    "source": [ "left_wrist_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrist_pak", 0 ],
                    "source": [ "left_wrist_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_x_trigger", 0 ],
                    "source": [ "left_x_difference", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_velocity_pak", 0 ],
                    "source": [ "left_x_square", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_x_unpack", 0 ],
                    "source": [ "left_x_stream", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_x_square", 1 ],
                    "source": [ "left_x_trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_x_square", 0 ],
                    "source": [ "left_x_trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_x_difference", 1 ],
                    "source": [ "left_x_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_x_difference", 0 ],
                    "source": [ "left_x_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_y_trigger", 0 ],
                    "source": [ "left_y_difference", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_velocity_pak", 1 ],
                    "source": [ "left_y_square", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_y_unpack", 0 ],
                    "source": [ "left_y_stream", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_y_square", 1 ],
                    "source": [ "left_y_trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_y_square", 0 ],
                    "source": [ "left_y_trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_y_difference", 1 ],
                    "source": [ "left_y_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_y_difference", 0 ],
                    "source": [ "left_y_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buffer", 0 ],
                    "source": [ "open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "start", 0 ],
                    "source": [ "present_sel", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stop", 0 ],
                    "source": [ "present_sel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buffer", 0 ],
                    "source": [ "replace", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "direction_number", 0 ],
                    "source": [ "reverse_message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_x_stream", 0 ],
                    "source": [ "right_elbow_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_y_stream", 0 ],
                    "source": [ "right_elbow_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_velocity_sum", 0 ],
                    "source": [ "right_velocity_pak", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "velocity_average_pak", 1 ],
                    "source": [ "right_velocity_scale", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_velocity_scale", 0 ],
                    "source": [ "right_velocity_sqrt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_velocity_sqrt", 0 ],
                    "source": [ "right_velocity_sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "height_pak", 1 ],
                    "source": [ "right_wrist_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrist_pak", 1 ],
                    "source": [ "right_wrist_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_x_trigger", 0 ],
                    "source": [ "right_x_difference", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_velocity_pak", 0 ],
                    "source": [ "right_x_square", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_x_unpack", 0 ],
                    "source": [ "right_x_stream", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_x_square", 1 ],
                    "source": [ "right_x_trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_x_square", 0 ],
                    "source": [ "right_x_trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_x_difference", 1 ],
                    "source": [ "right_x_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_x_difference", 0 ],
                    "source": [ "right_x_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_y_trigger", 0 ],
                    "source": [ "right_y_difference", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_velocity_pak", 1 ],
                    "source": [ "right_y_square", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_y_unpack", 0 ],
                    "source": [ "right_y_stream", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_y_square", 1 ],
                    "source": [ "right_y_trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_y_square", 0 ],
                    "source": [ "right_y_trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_y_difference", 1 ],
                    "source": [ "right_y_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_y_difference", 0 ],
                    "source": [ "right_y_unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_elbow_unpack", 0 ],
                    "source": [ "route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "left_wrist_unpack", 0 ],
                    "source": [ "route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "present_number", 0 ],
                    "order": 0,
                    "source": [ "route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "present_sel", 0 ],
                    "order": 1,
                    "source": [ "route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_elbow_unpack", 0 ],
                    "source": [ "route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "right_wrist_unpack", 0 ],
                    "source": [ "route", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "speed_display", 0 ],
                    "order": 0,
                    "source": [ "speed_direction", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "speed_line_message", 0 ],
                    "order": 1,
                    "source": [ "speed_direction", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove", 0 ],
                    "source": [ "speed_line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "speed_line", 0 ],
                    "source": [ "speed_line_message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove", 0 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "groove", 0 ],
                    "source": [ "stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "source": [ "udp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "velocity_clip", 0 ],
                    "source": [ "velocity_average", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "velocity_average_sum", 0 ],
                    "source": [ "velocity_average_pak", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "velocity_average", 0 ],
                    "source": [ "velocity_average_sum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "velocity_to_speed", 0 ],
                    "source": [ "velocity_clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "speed_direction", 0 ],
                    "source": [ "velocity_to_speed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain_l", 1 ],
                    "order": 1,
                    "source": [ "volume_line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain_r", 1 ],
                    "order": 0,
                    "source": [ "volume_line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volume_line", 0 ],
                    "source": [ "volume_pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volume_pack", 0 ],
                    "source": [ "volume_scale", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cross_select", 0 ],
                    "source": [ "wrist_change", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrist_change", 0 ],
                    "source": [ "wrist_compare", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrist_compare", 0 ],
                    "source": [ "wrist_difference", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrist_unpack", 0 ],
                    "source": [ "wrist_pak", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrist_difference", 1 ],
                    "source": [ "wrist_unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrist_difference", 0 ],
                    "source": [ "wrist_unpack", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}