﻿{
  "statisticForm": {
    "removeSquadIcon": false,
    "removeRankBadgeIcon": true,
    "removeTesterIcon": false,
    "vehicleIconAlpha": 100,
    "removeVehicleLevel": true,
    "removeVehicleTypeIcon": true,
    "removePlayerStatusIcon": false,
    "nameFieldShowBorder": false,
    "vehicleFieldShowBorder": false,
    "fragsFieldShowBorder": false,
    "squadIconOffsetXLeft": -2,
    "squadIconOffsetXRight": -1,
    "nameFieldOffsetXLeft": "{{py:isAnonym('{{xvm-stat}}')?1|-14}}",
    "nameFieldOffsetXRight": "{{py:isAnonym('{{xvm-stat}}')?3|-12}}",
    "nameFieldWidthLeft": "{{py:isAnonym('{{xvm-stat}}')?161|169}}",
    "nameFieldWidthRight": "{{py:isAnonym('{{xvm-stat}}')?161|169}}",
    "vehicleFieldOffsetXLeft": 80,
    "vehicleFieldOffsetXRight": 62,
    "vehicleFieldWidthLeft": "{{py:isAnonym('{{xvm-stat}}')?163|170}}",
    "vehicleFieldWidthRight": "{{py:isAnonym('{{xvm-stat}}')?163|170}}",
    "vehicleIconOffsetXLeft": 33,
    "vehicleIconOffsetXRight": 30,
    "fragsFieldOffsetXLeft": 22,
    "fragsFieldOffsetXRight": 18,
    "fragsFieldWidthLeft": 25,
    "fragsFieldWidthRight": 25,
    "formatLeftNick": "<font size='14'>{{.custom_texts.name.{{name}}|{{name%.15s~..}}}}{{anonym? <font face='NDO' size='13'><b>&#x0061;</b></font>}} <font color='{{topclan=top?#FF5500|#FF9900}}'>{{clan}}</font></font>",
    "formatRightNick": "<font size='14'><font color='{{topclan=top?#FF5500|#FF9900}}'>{{clan}}</font> {{.custom_texts.name.{{name}}|{{name%.15s~..}}}}</font>",
    "formatLeftVehicle": "<font size='{{py:isAnonym('{{xvm-stat}}')?0|14}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font><font face='NDO' size='{{py:isAnonym('{{xvm-stat}}')?14|0}}' alpha='{{alive?#FF|#80}}'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:xr}}'>{{r_size=2?{{r%2d|--}}|{{r>=10000?xxxx|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>",
    "formatRightVehicle": "<font size='{{py:isAnonym('{{xvm-stat}}')?0|14}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font><font face='NDO' size='{{py:isAnonym('{{xvm-stat}}')?14|0}}' alpha='{{alive?#FF|#80}}'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:xr}}'>{{r_size=2?{{r%2d|--}}|{{r>=10000?xxxx|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>",
    "formatLeftFrags": "{{frags|0}}",
    "formatRightFrags": "{{frags|0}}",
    "extraFieldsLeft": [
      { "enabled": "{{py:isAnonym('{{xvm-stat}}')?true|false}}", "x": 23, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{py:isAnonym('{{xvm-stat}}')?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ],
    "extraFieldsRight": [
      { "enabled": "{{py:isAnonym('{{xvm-stat}}')?true|false}}", "x": 25, "y": 1, "width": 15, "height": 24, "align": "center", "textFormat": { "valign": "center" }, "format": "<font face='NDO' size='{{py:isAnonym('{{xvm-stat}}')?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800|{{xvm-user=off?#AAAAAA}}}}}}'>{{xvm-user=on?&#x004E;|{{xvm-user=off?&#x004E;}}}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ]
  }
}