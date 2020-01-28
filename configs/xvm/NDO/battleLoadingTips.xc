{
  "battleLoadingTips": {
    "clockFormat": ${ "definition.xc": "definition.date" },
    "removeSquadIcon": false,
    "removeRankBadgeIcon": true,
    "removeTesterIcon": false,
    "vehicleIconAlpha": 100,
    "removeVehicleLevel": true,
    "removeVehicleTypeIcon": true,
    "nameFieldShowBorder": false,
    "vehicleFieldShowBorder": false,
    "squadIconOffsetXLeft": -1,
    "squadIconOffsetXRight": 2,
    "nameFieldOffsetXLeft": "{{py:isAnonym('{{xvm-stat}}')?13|-2}}",
    "nameFieldWidthDeltaLeft": "{{py:isAnonym('{{xvm-stat}}')?55|70}}",
    "nameFieldOffsetXRight": "{{py:isAnonym('{{xvm-stat}}')?16|1}}",
    "nameFieldWidthDeltaRight": "{{py:isAnonym('{{xvm-stat}}')?53|68}}",
    "vehicleFieldOffsetXLeft": 13,
    "vehicleFieldWidthDeltaLeft": 0,
    "vehicleFieldOffsetXRight": 12,
    "vehicleFieldWidthDeltaRight": 0,
    "vehicleIconOffsetXLeft": 0,
    "vehicleIconOffsetXRight": 0,
    "darkenNotReadyIcon": false,
    "formatLeftNick": "<font size='14'>{{.custom_texts.name.{{name}}|{{name%.15s~..}}}}{{anonym? <font face='NDO' size='13'><b>&#x0061;</b></font>}} <font color='{{topclan=top?#FF5500|#FF9900}}'>{{clan}}</font></font>",
    "formatRightNick": "<font size='14'><font color='{{topclan=top?#FF5500|#FF9900}}'>{{clan}}</font> {{.custom_texts.name.{{name}}|{{name%.15s~..}}}}</font>",
    "formatLeftVehicle": "",
    "formatRightVehicle": "",
    "extraFieldsLeft": [
      { "enabled": "{{py:isAnonym('{{xvm-stat}}')?true|false}}", "x": 32, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{py:isAnonym('{{xvm-stat}}')?16|0}}' color='{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ],
    "extraFieldsRight": [
      { "enabled": "{{py:isAnonym('{{xvm-stat}}')?true|false}}", "x": 30, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{py:isAnonym('{{xvm-stat}}')?16|0}}' color='{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ]
  }
}