{
  "battleLoadingTips": {
    "clockFormat": ${"definition.xc":"definition.date"},
    "removeSquadIcon": false,
    "removeRankBadgeIcon": true,
    "vehicleIconAlpha": 100,
    "removeVehicleLevel": true,
    "removeVehicleTypeIcon": true,
    "nameFieldShowBorder": false,
    "vehicleFieldShowBorder": false,
    "squadIconOffsetXLeft": 0,
    "squadIconOffsetXRight": 0,
    "nameFieldOffsetXLeft": "{{xvm-stat?13|-2}}",
    "nameFieldWidthDeltaLeft": "{{xvm-stat?54|69}}",
    "nameFieldOffsetXRight": "{{xvm-stat?16|1}}",
    "nameFieldWidthDeltaRight": "{{xvm-stat?54|69}}",
    "vehicleFieldOffsetXLeft": 12,
    "vehicleFieldWidthDeltaLeft": 0,
    "vehicleFieldOffsetXRight": 13,
    "vehicleFieldWidthDeltaRight": 0,
    "vehicleIconOffsetXLeft": 0,
    "vehicleIconOffsetXRight": 0,
    "darkenNotReadyIcon": false,
    "formatLeftNick": "<font size='14'>{{.custom_texts.name.{{name}}|{{name%.15s~..}}}} <font color='{{topclan=top?#FF5500|#FF9900}}'>{{clan}}</font></font>",
    "formatRightNick": "<font size='14'><font color='{{topclan=top?#FF5500|#FF9900}}'>{{clan}}</font> {{.custom_texts.name.{{name}}|{{name%.15s~..}}}}</font>",
    "formatLeftVehicle": "",
    "formatRightVehicle": "",
    "extraFieldsLeft": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 32, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ],
    "extraFieldsRight": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 30, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ]
  }
}