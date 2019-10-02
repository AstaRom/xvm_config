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
    "squadIconOffsetXLeft": -29,
    "squadIconOffsetXRight": -29,
    "nameFieldOffsetXLeft": -35,
    "nameFieldWidthDeltaLeft": 84,
    "nameFieldOffsetXRight": -35,
    "nameFieldWidthDeltaRight": 88,
    "vehicleFieldOffsetXLeft": -4,
    "vehicleFieldWidthDeltaLeft": 0,
    "vehicleFieldOffsetXRight": -4,
    "vehicleFieldWidthDeltaRight": 0,
    "vehicleIconOffsetXLeft": -26,
    "vehicleIconOffsetXRight": -20,
    "darkenNotReadyIcon": false,
    "formatLeftNick": "<font size='14'>{{name%.15s~..}} <font color='#ff9900'>{{clan}}</font></font>",
    "formatRightNick": "<font size='14'><font color='#ff9900'>{{clan}}</font> {{name%.15s~..}}</font>",
    "formatLeftVehicle": "",
    "formatRightVehicle": "",
    "extraFieldsLeft": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 0, "y": 0, "align": "center", "valign": "center", "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800}}{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;}}{{xvm-user=off?&#x004E;}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ],
    "extraFieldsRight": [
      { "enabled": "{{xvm-stat?true|false}}", "x": 0, "y": 0, "align": "center", "valign": "center", "format": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{x-enabled?#96FF00|{{xvm-user=on?#FF8800}}{{xvm-user=off?#AAAAAA}}}}'>{{xvm-user=on?&#x004E;}}{{xvm-user=off?&#x004E;}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } }
    ]
  }
}