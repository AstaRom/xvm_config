{
  "battleLoading": {
    "clockFormat": ${"definition.xc":"definition.date"},
    "showBattleTier": true,
    "removeSquadIcon": false,
    "removeRankBadgeIcon": true,
    "vehicleIconAlpha": 100,
    "removeVehicleLevel": true,
    "removeVehicleTypeIcon": true,
    "nameFieldShowBorder": false,
    "vehicleFieldShowBorder": false,
    "squadIconOffsetXLeft": 0,
    "squadIconOffsetXRight": 0,
    "nameFieldOffsetXLeft": "{{xvm-stat?14|-1}}",
    "nameFieldWidthDeltaLeft": 0,
    "nameFieldOffsetXRight": "{{xvm-stat?14|-1}}",
    "nameFieldWidthDeltaRight": 0,
    "vehicleFieldOffsetXLeft": 50,
    "vehicleFieldWidthDeltaLeft": 0,
    "vehicleFieldOffsetXRight": 47,
    "vehicleFieldWidthDeltaRight": 0,
    "vehicleIconOffsetXLeft": 22,
    "vehicleIconOffsetXRight": 19,
    "darkenNotReadyIcon": false,
    "formatLeftNick": "<font size='14'>{{.custom_texts.name.{{name}}|{{name%.15s~..}}}} <font color='{{topclan=top?#ff5500|#ff9900}}'>{{clan}}</font></font>",
    "formatRightNick": "<font size='14'><font color='{{topclan=top?#ff5500|#ff9900}}'>{{clan}}</font> {{.custom_texts.name.{{name}}|{{name%.15s~..}}}}</font>",
    "formatLeftVehicle": "<font size='{{xvm-stat?0|14}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font><font face='NDO' size='{{xvm-stat?14|0}}' alpha='{{alive?#FF|#80}}'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%2d|--}}|{{r>=10000?xxxx|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>",
    "formatRightVehicle": "<font size='{{xvm-stat?0|14}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font><font face='NDO' size='{{xvm-stat?14|0}}' alpha='{{alive?#FF|#80}}'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%2d|--}}|{{r>=10000?xxxx|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>",
    "extraFieldsLeft": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 80, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ],
    "extraFieldsRight": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 86, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ]
  }
}