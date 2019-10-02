{
  "def": {
    "defaultItem": {
      "flags": [ "player", "ally", "squadman", "enemy", "teamKiller", "lost", "spotted", "alive", "dead" ],
      "shadow": { "distance": 0, "angle": 45, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 4 },
      "alpha": 100,
      "x": 0,
      "y": 0,
      "width": 100,
      "height": 40,
      "align": "left",
      "valign": "top",
      "antiAliasType": "normal",
      "bgColor": null,
      "borderColor": null
    },
    // Тип техники, видимый
    "vtypeSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "format": "<font size='16' color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center"
    },
    // Название техники, видимый
    "vehicleSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "format": "<font size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{vehicle}}</font>",
      "x": 2,
      "y": -1
    },
    // Тип техники, пропавший
    "vtypeLost": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "format": "<font size='16' color='{{.minimap.labelsData.colors.lostDot.{{sys-color-key}}}}'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center",
      "alpha": 75
    },
    // Название техники, пропавший
    "vehicleLost": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "format": "<font size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{vehicle}}</font>",
      "alpha": 85,
      "x": 2,
      "y": 1
    },
    // Тип техники, мертвый
    "vtypeDead": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "squadman", "dead" ],
      "format": "<font face='NDO' size='10' color='{{.minimap.labelsData.colors.lostDot.{{sys-color-key}}}}'>&#x0047;</font>",
      "shadow": { "$ref": { "path":"def.defaultItem.shadow" }, "strength": 3 },
      "align": "center",
      "valign": "center",
      "alpha": 75
    }
  }
}