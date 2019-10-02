{
  "camera": {
    "enabled": true,
		"noScroll": ${"camera/noScroll.xc":"noScroll"},
    "arcade": {
      "distRange": [2, 100],
      "startDist": null,
      "scrollSensitivity": 5,
      "dynamicCameraEnabled": ${"camera/dynamicCameraEnabled.xc":"dynamicCameraEnabled"}
    },
    "postmortem": {
      "distRange": [2, 100],
      "startDist": null,
      "scrollSensitivity": 5,
      "dynamicCameraEnabled": ${"camera/dynamicCameraEnabled.xc":"dynamicCameraEnabled"}
    },
    "strategic": {
      "distRange": [20, 150],
      "dynamicCameraEnabled": ${"camera/dynamicCameraEnabled.xc":"dynamicCameraEnabled"}
    },
    "sniper": {
      "zooms": ${"camera/zooms.xc":"zooms"},
      "zoomIndicator": {
        "enabled": ${"camera/zoomIndicator.xc":"enabled"},
        "x": 150,
        "y": 30,
        "width": 100,
        "height": 40,
        "alpha": 100,
        "align": "left",
        "valign": "center",
        "bgColor": null,
        "borderColor": null,
        "shadow": { "distance": 0, "angle": 0, "color": "0x192E0E", "alpha": 100, "blur": 3, "strength": 7 },
        "format": "<font face='$TitleFont' color='#95CB29' size='16'>x{{zoom}}</font>"
      },
      "dynamicCameraEnabled": ${"camera/dynamicCameraEnabled.xc":"dynamicCameraEnabled"}
    }
  }
}