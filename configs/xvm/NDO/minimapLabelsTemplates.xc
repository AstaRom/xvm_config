{
  "def": {
    "defaultItem": {
      "enabled": true,
      "x": 0,
      "y": 0,
      "width": 100,
      "height": 40,
      "alpha": 100,
      "align": "left",
      "valign": "top",
      "flags": [ "player", "ally", "squadman", "enemy", "teamKiller", "lost", "spotted", "alive", "dead" ],
      "bgColor": null,
      "borderColor": null,
      "antiAliasType": "normal",
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 4 }
    },
    // Тип техники, видимый
    "vtypeSpotted": {
      "$ref": { "path": "def.defaultItem" },
      "align": "center",
      "valign": "center",
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "layer": "top",
      "textFormat": { "font": "NDO", "size": 18, "align": "center", "valign": "center" },
      "format": "<font color='{{.minimap.labelsData.colors.spottedDot.{{sys-color-key}}}}'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>"
    },
    // Название техники, видимый
    "vehicleSpotted": {
      "$ref": { "path": "def.defaultItem" },
      "x": 2,
      "y": 0,
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{vehicle}}</font>"
    },
    // Ник игрока, видимый
    "nickSpotted": {
      "$ref": { "path": "def.defaultItem" },
      "x": 2,
      "y": 0,
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{name%.7s~..}}</font>"
    },
    // Тип техники, пропавший
    "vtypeLost": {
      "$ref": { "path": "def.defaultItem" },
      "alpha": 85,
      "align": "center",
      "valign": "center",
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "layer": "bottom",
      "textFormat": { "font": "NDO", "size": 18, "align": "center", "valign": "center" },
      "format": "<font color='{{.minimap.labelsData.colors.lostDot.{{sys-color-key}}}}'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>"
    },
    // Название техники, пропавший
    "vehicleLost": {
      "$ref": { "path": "def.defaultItem" },
      "x": 2,
      "y": 0,
      "alpha": 85,
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "layer": "bottom",
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{vehicle}}</font>"
    },
    // Ник игрока, пропавший
    "nickLost": {
      "$ref": { "path": "def.defaultItem" },
      "x": 2,
      "y": 0,
      "alpha": 85,
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "layer": "bottom",
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{name%.7s~..}}</font>"
    },
    // Тип техники, мертвый
    "vtypeDead": {
      "$ref": { "path": "def.defaultItem" },
      "alpha": 75,
      "align": "center",
      "valign": "center",
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "dead" ],
      "layer": "substrate",
      "textFormat": { "font": "NDO", "size": 10, "align": "center", "valign": "center" },
      "format": "<font color='{{.minimap.labelsData.colors.deadDot.{{sys-color-key}}}}'>&#x0047;</font>"
    },
    // Ник игрока, мертвый
    "nickDead": {
      "$ref": { "path": "def.defaultItem" },
      "x": 2,
      "y": 0,
      "alpha": 75,
      "flags": [ "squadman", "dead" ],
      "layer": "substrate",
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s~..}}</i></font>"
    }
  }
}