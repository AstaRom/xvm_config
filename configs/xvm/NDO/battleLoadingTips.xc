{
  "battleLoadingTips": {
    "clockFormat": ${"definition.xc":"definition.date"},
    "showBattleTier": true,
    "removeSquadIcon": false,
    "vehicleIconAlpha": 100,
    "removeVehicleLevel": true,
    "removeVehicleTypeIcon": true,
    "nameFieldShowBorder": false,
    "vehicleFieldShowBorder": false,
    "squadIconOffsetXLeft": 0,
    "squadIconOffsetXRight": 0,
    "nameFieldOffsetXLeft": "{{xvm-stat?5|-10}}",
    "nameFieldWidthDeltaLeft": "{{xvm-stat?44|59}}",
    "nameFieldOffsetXRight": "{{xvm-stat?10|-5}}",
    "nameFieldWidthDeltaRight": "{{xvm-stat?43|58}}",
    "vehicleFieldOffsetXLeft": -4,
    "vehicleFieldWidthDeltaLeft": 0,
    "vehicleFieldOffsetXRight": -4,
    "vehicleFieldWidthDeltaRight": 0,
    "vehicleIconOffsetXLeft": -26,
    "vehicleIconOffsetXRight": -20,
    "darkenNotReadyIcon": false,
    "formatLeftNick": "<font size='14'>{{.custom_texts.name.{{name}}|{{name%.15s~..}}}} <font color='{{topclan=top?#ff5500|#ff9900}}'>{{clan}}</font></font>",
    "formatRightNick": "<font size='14'><font color='{{topclan=top?#ff5500|#ff9900}}'>{{clan}}</font> {{.custom_texts.name.{{name}}|{{name%.15s~..}}}}</font>",
    "formatLeftVehicle": "",
    "formatRightVehicle": "",
    "extraFieldsLeft": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 20, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800}}{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;}}{{xvm-user=off?&#x004E;}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ],
    "extraFieldsRight": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 26, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800}}{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;}}{{xvm-user=off?&#x004E;}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ]
  }
}