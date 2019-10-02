{
  "statisticForm": {
    "showBattleTier": true,
    "removeSquadIcon": false,
    "removeVehicleLevel": true,
    "removeVehicleTypeIcon": true,
    "nameFieldShowBorder": false,
    "vehicleFieldShowBorder": false,
    "fragsFieldShowBorder": false,
    "squadIconOffsetXLeft": 0,
    "squadIconOffsetXRight": 0,
    "nameFieldOffsetXLeft": 0,
    "nameFieldOffsetXRight": -10,
    "nameFieldWidthLeft": 168,
    "nameFieldWidthRight": 168,
    "vehicleFieldOffsetXLeft": 59,
    "vehicleFieldOffsetXRight": 56,
    "vehicleFieldWidthLeft": 168,
    "vehicleFieldWidthRight": 168,
    "vehicleIconOffsetXLeft": 33,
    "vehicleIconOffsetXRight": 29,
    "fragsFieldOffsetXLeft": 22,
    "fragsFieldOffsetXRight": 17,
    "fragsFieldWidthLeft": 25,
    "fragsFieldWidthRight": 25,
    "formatLeftNick": "<font size='14'>{{name%.15s~..}} <font color='#ff9900'>{{clan}}</font></font>",
    "formatRightNick": "<font size='14'><font color='#ff9900'>{{clan}}</font> {{name%.15s~..}}</font>",
    "formatLeftVehicle": "<font size='{{xvm-stat?0|14}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font><font face='NDO' size='{{xvm-stat?14|0}}' alpha='{{alive?#FF|#80}}'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>",
    "formatRightVehicle": "<font size='{{xvm-stat?0|14}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font><font face='NDO' size='{{xvm-stat?14|0}}' alpha='{{alive?#FF|#80}}'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>",
    "formatLeftFrags": "{{frags|0}}",
    "formatRightFrags": "{{frags|0}}",
    "extraFieldsLeft": [
      { "x": 0, "y": 0, "align": "center", "valign": "center", "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800}}{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;}}{{xvm-user=off?&#x004E;}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ],
    "extraFieldsRight": [
      { "x": 0, "y": 0, "align": "center", "valign": "center", "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800}}{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;}}{{xvm-user=off?&#x004E;}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ]
  }
}