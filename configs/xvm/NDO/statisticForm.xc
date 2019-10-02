{
  "statisticForm": {
    "showBattleTier": true,
    "removeSquadIcon": false,
    "vehicleIconAlpha": 100,
    "removeVehicleLevel": true,
    "removeVehicleTypeIcon": true,
    "nameFieldShowBorder": false,
    "vehicleFieldShowBorder": false,
    "fragsFieldShowBorder": false,
    "squadIconOffsetXLeft": 0,
    "squadIconOffsetXRight": 0,
    "nameFieldOffsetXLeft": "{{xvm-stat?11|0}}",
    "nameFieldOffsetXRight": "{{xvm-stat?1|-10}}",
    "nameFieldWidthLeft": "{{xvm-stat?161|164}}",
    "nameFieldWidthRight": "{{xvm-stat?161|164}}",
    "vehicleFieldOffsetXLeft": 59,
    "vehicleFieldOffsetXRight": 56,
    "vehicleFieldWidthLeft": "{{xvm-stat?161|164}}",
    "vehicleFieldWidthRight": "{{xvm-stat?161|164}}",
    "vehicleIconOffsetXLeft": 33,
    "vehicleIconOffsetXRight": 29,
    "fragsFieldOffsetXLeft": 22,
    "fragsFieldOffsetXRight": 17,
    "fragsFieldWidthLeft": 25,
    "fragsFieldWidthRight": 25,
    "formatLeftNick": "<font size='14'>{{.custom_texts.name.{{name}}|{{name%.15s~..}}}} <font color='{{topclan=top?#ff5500|#ff9900}}'>{{clan}}</font></font>",
    "formatRightNick": "<font size='14'><font color='{{topclan=top?#ff5500|#ff9900}}'>{{clan}}</font> {{.custom_texts.name.{{name}}|{{name%.15s~..}}}}</font>",
    "formatLeftVehicle": "<font size='{{xvm-stat?0|14}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font><font face='NDO' size='{{xvm-stat?14|0}}' alpha='{{alive?#FF|#80}}'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>",
    "formatRightVehicle": "<font size='{{xvm-stat?0|14}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font><font face='NDO' size='{{xvm-stat?14|0}}' alpha='{{alive?#FF|#80}}'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>",
    "formatLeftFrags": "{{frags|0}}",
    "formatRightFrags": "{{frags|0}}",
    "extraFieldsLeft": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 25, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ],
    "extraFieldsRight": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 26, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ]
  }
}