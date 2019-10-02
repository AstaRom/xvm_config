{
  "normal": {
    "width": 160,
    "height": 100,
    "gap": 5,
    "fields": {
      "flag": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankType": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "level": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "xp": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankName": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "rentInfo": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "info": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "infoBuy": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 }
    },
    "extraFields": [
      //{ "x": 0, "y": 0, "height": 100, "width": 160, "bgColor": "0x000000", "alpha": 50, "layer": "substrate" },
      //{ "x": 0, "y": 0, "height": 100, "width": 160, "src": "cfg://NDO/img/carousel/bgFrame.png", "layer": "substrate" },
      //{ "x": 0, "y": 0, "height": 32, "width": 160, "bgColor": "0x000000", "alpha": 35, "layer": "substrate" },
      //{ "x": 0, "y": 68, "height": 32, "width": 160, "bgColor": "0x000000", "alpha": 35, "layer": "substrate" },
      { "x": 3, "y": 3, "height": 26, "width": 26, "src": "img://gui/maps/vehicles/decals/{{.custom_texts.carousel.nation.{{v.nation}}}}.dds" },
      //{ "x": 1, "y": 4, "height": 24, "width": 30, "src": "cfg://NDO/img/carousel/vtype/{{.custom_texts.carousel.type}}{{v.elite?_elite}}.png" },
      { "x": 3, "y": 70, "height": 28, "width": 26, "src": "img://gui/maps/icons/achievement/markOfMastery{{v.mastery}}.png" },
      { "x": 30, "y": 0, "align": "left", "format": "<font face='$FieldFont' size='12' color='#DDDDDD'><b>{{v.winrate%2d~%|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 14, "align": "left", "format": "<font face='$FieldFont' size='12' color='#808080'><b>{{v.tdb%-4d|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 66, "align": "right", "format": "<font face='$FieldFont' size='12'><font color='#808080'><b>({{v.battletiermin}}-{{v.battletiermax}})</b></font> <font color='#DDDDDD'><b>{{v.rlevel}}</b></font></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 80, "align": "right", "format": "<font face='$FieldFont' size='13' color='{{v.premium?#FFAA55|#DDDDDD}}'><b>{{v.name}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "{{v.premium?0xFF4400|0x4C4C4C}}", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 160, "y": 52, "align": "right", "format": "<font face='$FieldFont' color='#DDDDDD'>{{v.marksOnGun}}</font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 3, "strength": 4 } },
      //{ "x": 1, "y": 1, "height": 100, "width": 160, "borderColor": "0xFFF0AA", "alpha": 100, "alpha": "{{v.selected?100|0}}", "layer": "top" },
      //{ "x": 0, "y": 0, "height": 102, "width": 162, "borderColor": "0xFFF0AA", "alpha": 100, "alpha": "{{v.selected?85|0}}", "layer": "top" },
      {}
    ]
  },
  "small": {
    "width": 160,
    "height": 35,
    "gap": 5,
    "fields": {
      "flag": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankType": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "level": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "xp": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankName": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "info": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "infoBuy": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 }
    },
    "extraFields": [
      { "x": 3, "y": 5, "height": 26, "width": 26, "src": "img://gui/maps/vehicles/decals/{{.custom_texts.carousel.nation.{{v.nation}}}}.dds" },
      //{ "x": 1, "y": 6, "height": 24, "width": 30, "src": "cfg://NDO/img/carousel/vtype/{{.custom_texts.carousel.type}}{{v.elite?_elite}}.png" },
      { "x": 3, "y": 70, "height": 28, "width": 26, "src": "img://gui/maps/icons/achievement/markOfMastery{{v.mastery}}.png" },
      { "x": 30, "y": 2, "align": "left", "format": "<font face='$FieldFont' size='12' color='#DDDDDD'><b>{{v.winrate%2d~%|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 16, "align": "left", "format": "<font face='$FieldFont' size='12' color='#808080'><b>{{v.tdb%-4d|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 17, "align": "right", "format": "<font face='$FieldFont' size='13' color='{{v.premium?#FFAA55|#DDDDDD}}'><b>{{v.name}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "{{v.premium?0xFF4400|0x4C4C4C}}", "alpha": 80, "blur": 4, "strength": 2 } },
      {}
    ]
  }
}