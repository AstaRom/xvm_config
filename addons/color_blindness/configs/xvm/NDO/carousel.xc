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
      //{ "x": 0, "y": 0, "h": 100, "w": 160, "src": "cfg://NDO/img/carousel/bgColor.png" },
      //{ "x": 0, "y": 0, "h": 100, "w": 160, "src": "cfg://NDO/img/carousel/bgFrame.png" },
      //{ "x": 0, "y": 0, "h": 32, "w": 160, "bgColor": "0x000000", "alpha": 35 },
      //{ "x": 0, "y": 68, "h": 32, "w": 160, "bgColor": "0x000000", "alpha": 35 },
      //{ "x": 0, "y": 0, "h": 102, "w": 162, "src": "img://gui/maps/icons/vehicle/{{v.sysname}}.png" },
      { "x": 3, "y": 3, "h": 26, "w": 26, "src": "img://gui/maps/vehicles/decals/{{.custom_texts.carousel.nation.{{v.nation}}}}.dds" },
      //{ "x": 1, "y": 4, "h": 24, "w": 30, "src": "cfg://NDO/img/carousel/vtype/{{.custom_texts.carousel.type}}{{v.elite?_elite}}.png" },
      { "x": 3, "y": 70, "h": 28, "w": 26, "src": "img://gui/maps/icons/achievement/markOfMastery{{v.mastery}}.png" },
      { "x": 30, "y": 0, "align": "left", "format": "<font face='$FieldFont' size='12' color='#DDDDDD'><b>{{v.winrate%2d~%|}}</b></font>", "shadow": { "distance": 0, "angle": 0, "color": "0x000000", "alpha": 0.8, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 14, "align": "left", "format": "<font face='$FieldFont' size='12' color='#808080'><b>{{v.tdb%-4d|}}</b></font>", "shadow": { "distance": 0, "angle": 0, "color": "0x000000", "alpha": 0.8, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 66, "align": "right", "format": "<font face='$FieldFont' size='12' color='#808080'><b>({{v.battletiermin}}-{{v.battletiermax}})</b> </font><font face='$FieldFont' size='12' color='#DDDDDD'><b>{{v.rlevel}}</b></font>", "shadow": { "distance": 0, "angle": 0, "color": "0x000000", "alpha": 0.8, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 80, "align": "right", "format": "<font face='$FieldFont' size='13' color='{{v.premium?#FFAA55|#DDDDDD}}'><b>{{v.name}}</b></font>", "shadow": { "distance": 0, "angle": 0, "color": "{{v.premium?0xFF4400|0x4C4C4C}}", "alpha": 0.8, "blur": 4, "strength": 2 } },
      { "x": 160, "y": 52, "align": "right", "format": "<font face='$FieldFont' color='#DDDDDD'>{{v.marksOnGun}}</font>", "shadow": { "distance": 0, "angle": 0, "color": "0x000000", "alpha": 0.8, "blur": 3, "strength": 4 } },
      {}
    ],
    "nations_order": [],
    "types_order": ["lightTank", "mediumTank", "heavyTank", "AT-SPG", "SPG"],
    "sorting_criteria": ["nation", "type", "level"],
    "suppressCarouselTooltips": false
  }
}