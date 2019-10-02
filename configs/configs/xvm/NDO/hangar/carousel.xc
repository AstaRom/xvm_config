{
  "carousel": {
    "enabled": true,
    "zoom": 1,
    "rows": 2,
    "padding": { "horizontal": 5, "vertical": 5 },
    "backgroundAlpha": 60,
    "scrollingSpeed": 20,
    "alwaysShowFilters": true,
    "hideBuyTank": true,
    "hideBuySlot": false,
    "showUsedSlots": true,
    "showTotalSlots": false,
    "filters": {
      "nation": { "enabled": true },
      "type": { "enabled": true },
			"favorite": { "enabled": true },
			"gameMode": { "enabled": true },
      "level": { "enabled": true },
      "prefs": { "enabled": true }
    },
    "filtersPadding": {
			"horizontal": 11,
			"vertical": 13
    },
    "fields": {
      "tankType": { "visible": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "level": { "visible": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
			"multiXp": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "xp": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankName": { "visible": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "statusText": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "statusTextBuy": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "clanLock": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "activateButton": { "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    "extraFields": [
      { "x": 1, "y": 1, "h": 18, "w": 23, "src": "cfg://NDO/hangar/img/vtype/{{v.c_type}}{{v.elite?_elite|}}.png" },
      { "x": 20, "y": 2, "src": "cfg://NDO/hangar/img/level/{{v.level}}.png" },
      { "x": 2, "y": 13, "h": 23, "w": 23, "src": "cfg://NDO/hangar/img/mastery/{{v.mastery}}.png" },
      { "x": 20, "y": 15, "align": "left", "format": "<font face='$FieldFont' size='12' color='{{v.c_winrate}}'>{{v.winrate%2d~%|}}</font>", "shadow": { "distance": 0, "angle": 0, "color": "0x000000", "alpha": 0.8, "blur": 3, "strength": 2 } },
      { "x": 2, "y": 77, "h": 18, "w": 18, "src": "cfg://NDO/hangar/img/battletier.png" },
      { "x": 20, "y": 78, "align": "left", "format": "<font face='$FieldFont' size='12' color='#DDDDDD'>{{v.battletiermin}}-{{v.battletiermax}}</font>", "shadow": { "distance": 0, "angle": 0, "color": "0x000000", "alpha": 0.8, "blur": 3, "strength": 2 } },
      { "x": 158, "y": 60, "align": "right", "format": "<font face='$FieldFont' color='#BB0000'>{{v.marksOnGun}}</font>", "shadow": { "distance": 0, "angle": 0, "color": "0x000000", "alpha": 0.8, "blur": 3, "strength": 4 } },
      { "x": 158, "y": 76, "align": "right", "format": "<font face='$FieldFont' size='15' color='#DDDDDD'>{{v.name}}</font>", "alpha": "{{v.premium?0|100}}", "shadow": { "distance": 0, "angle": 0, "color": "0x4C4C4C", "alpha": 0.8, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 76, "align": "right", "format": "<font face='$FieldFont' size='15' color='#FFAA55'>{{v.name}}</font>", "alpha": "{{v.premium?100|0}}", "shadow": { "distance": 0, "angle": 0, "color": "0xFF4400", "alpha": 0.8, "blur": 4, "strength": 2 } }
    ],
    "nations_order": [],
    "types_order": ["lightTank", "mediumTank", "heavyTank", "AT-SPG", "SPG"],
    "sorting_criteria": ["nation", "type", "level"],
    "suppressCarouselTooltips": false
  }
}