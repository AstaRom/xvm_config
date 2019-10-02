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
      "tankName": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      "rentInfo": { "enabled": true, "dx": -1, "dy": -48, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      "info": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      "infoImg":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "infoBuy": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "favorite": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "stats": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "textFormat": {}, "shadow": {} }
    },
    "extraFields": [
      //{ "x": 0, "y": 0, "width": 162, "height": 102, "bgColor": "0x000000", "alpha": 50, "layer": "substrate" },
      //{ "x": 0, "y": 0, "width": 162, "height": 102, "src": "cfg://NDO/img/carousel/bgFrameNormal.png", "layer": "substrate" },
      //{ "x": 0, "y": 0, "width": 160, "height": 32, "bgColor": "0x000000", "alpha": 35, "layer": "substrate" },
      //{ "x": 0, "y": 68, "width": 160, "height": 32, "bgColor": "0x000000", "alpha": 35, "layer": "substrate" },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "x": 3, "y": 3, "width": 26, "height": 26, "src": "img://gui/maps/vehicles/decals/{{.custom_texts.carousel.nation.{{v.nation}}}}.dds" },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "x": 1, "y": 4, "width": 30, "height": 24, "src": "cfg://NDO/img/carousel/vtype/{{v.type_key}}{{v.elite?_elite}}.png" },      
      { "x": 3, "y": 70, "width": 26, "height": 28, "src": "img://gui/maps/icons/achievement/markOfMastery{{v.mastery}}.png" },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "x": 30, "y": 0, "align": "left", "format": "<font face='$FieldFont' size='12' color='#DDDDDD'><b>{{v.winrate%2d~%|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "x": 30, "y": 0, "align": "left", "format": "<font face='$FieldFont' size='{{v.battles>0?12|0}}' color='#DDDDDD'><b>{{v.battles%-5d}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 14, "align": "left", "format": "<font face='$FieldFont' size='12' color='#808080'><b>{{v.tdb%-4d|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "x": 160, "y": 52, "align": "right", "format": "<font face='$FieldFont' color='#BB0000'>{{v.marksOnGun}}</font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 3, "strength": 4 } },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "x": 158, "y": 52, "align": "right", "format": "<font face='$FieldFont' size='12' color='#808080'><b>{{v.damageRating%2.01f~%|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 66, "align": "right", "format": "<font face='$FieldFont' size='12'><font color='#808080'><b>({{v.battletiermin}}-{{v.battletiermax}})</b></font> <font color='#DDDDDD'><b>{{v.rlevel}}</b></font></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "x": 158, "y": 80, "align": "right", "format": "<font face='$FieldFont' size='13' color='{{v.premium?#FFAA55|#DDDDDD}}'><b>{{v.name}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "{{v.premium?0xFF4400|0x4C4C4C}}", "alpha": 80, "blur": 4, "strength": 2 } },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "x": 139, "y": 83, "width": 19, "height": 15, "src": "cfg://NDO/img/carousel/camouflage/{{v.camouflageSummer?s|n}}{{v.camouflageWinter?w|n}}{{v.camouflageDesert?d|n}}.png" },
      //{ "x": 1, "y": 1, "width": 160, "height": 100, "borderColor": "0xFFF0AA", "alpha": 100, "alpha": "{{v.selected?100|0}}", "layer": "top" },
      //{ "x": 0, "y": 0, "width": 162, "height": 102, "borderColor": "0xFFF0AA", "alpha": 100, "alpha": "{{v.selected?85|0}}", "layer": "top" },
      {}
    ]
  },
  "small": {
    "width": 160,
    "height": 35,
    "gap": 10,
    "fields": {
      "flag": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankType": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "level": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "xp": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "tankName": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      "info": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      "infoImg":  { "enabled": true, "dx": 63, "dy": 1, "alpha": 100, "scale": 1 },
      "infoBuy": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "favorite": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      "stats": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "textFormat": {}, "shadow": {} }
    },
    "extraFields": [
      //{ "x": 0, "y": 0, "width": 162, "height": 37, "bgColor": "0x000000", "alpha": 50, "layer": "substrate" },
      //{ "x": 0, "y": 0, "width": 162, "height": 37, "src": "cfg://NDO/img/carousel/bgFrameSmall.png", "layer": "substrate" },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "x": 3, "y": 5, "width": 26, "height": 26, "src": "img://gui/maps/vehicles/decals/{{.custom_texts.carousel.nation.{{v.nation}}}}.dds" },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "x": 1, "y": 6, "width": 30, "height": 24, "src": "cfg://NDO/img/carousel/vtype/{{v.type_key}}{{v.elite?_elite}}.png" },      
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "x": 30, "y": 2, "align": "left", "format": "<font face='$FieldFont' size='12' color='#DDDDDD'><b>{{v.winrate%2d~%|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "x": 30, "y": 2, "align": "left", "format": "<font face='$FieldFont' size='{{v.battles>0?12|0}}' color='#DDDDDD'><b>{{v.battles%-5d}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 16, "align": "left", "format": "<font face='$FieldFont' size='12' color='#808080'><b>{{v.tdb%-4d|}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 16, "align": "right", "format": "<font face='$FieldFont' size='13' color='{{v.premium?#FFAA55|#DDDDDD}}'><b>{{v.name}}</b></font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "{{v.premium?0xFF4400|0x4C4C4C}}", "alpha": 80, "blur": 4, "strength": 2 } },
      //{ "x": 1, "y": 1, "width": 160, "height": 35, "borderColor": "0xFFF0AA", "alpha": 100, "alpha": "{{v.selected?100|0}}", "layer": "top" },
      //{ "x": 0, "y": 0, "width": 162, "height": 37, "borderColor": "0xFFF0AA", "alpha": 100, "alpha": "{{v.selected?85|0}}", "layer": "top" },
      {}
    ]
  }
}