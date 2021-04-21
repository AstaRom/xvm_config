﻿{
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
      "crystalsBorder": { "enabled": false, "alpha": 100 },
      "crystalsIcon": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100 },
      "stats": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "textFormat": {}, "shadow": {} },
      "progressionPoints": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    "extraFields": [
      //{ "x": 0, "y": 0, "width": 162, "height": 102, "alpha": 50, "bgColor": "0x000000", "layer": "substrate" },
      //{ "x": 0, "y": 0, "width": 162, "height": 102, "layer": "substrate", "src": "cfg://NDO/img/carousel/bgFrameNormal.png" },
      //{ "x": 0, "y": 0, "width": 160, "height": 32, "alpha": 35, "bgColor": "0x000000", "layer": "substrate" },
      //{ "x": 0, "y": 68, "width": 160, "height": 32, "alpha": 35, "bgColor": "0x000000", "layer": "substrate" },
      { "x": 3, "y": 3, "width": 26, "height": 26, "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "src": "img://gui/maps/vehicles/decals/{{.custom_texts.carousel.nation.{{v.nation}}}}.dds" },
      { "x": 1, "y": 4, "width": 30, "height": 24, "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "src": "cfg://NDO/img/carousel/vtype/{{v.type_key}}{{v.elite?_elite}}.png" },
      { "x": 3, "y": 70, "width": 26, "height": 28, "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "src": "{{v.mastery!=0?img://gui/maps/icons/achievement/markOfMastery{{v.mastery}}.png}}" },
      { "x": 3, "y": 70, "width": 28, "height": 28, "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "src": "{{v.crystalEarned!=100?img://gui/maps/icons/library/crystal_48x48.png}}" },
      { "x": 30, "y": 0, "align": "left", "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "textFormat": { "font": "$FieldFont", "size": 12, "color": "0xDDDDDD", "bold": true }, "format": "{{v.winrate%2d~%|}}", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 0, "align": "left", "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "textFormat": { "font": "$FieldFont", "size": "{{v.battles>0?12|0}}", "color": "0xDDDDDD", "bold": true }, "format": "{{v.battles%-5d}}", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 14, "align": "left", "textFormat": { "font": "$FieldFont", "size": 12, "color": "0x808080", "bold": true }, "format": "{{v.tdb%-4d|}}", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 160, "y": 52, "align": "right", "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "layer": "top", "textFormat": { "color": "0xBB0000" }, "format": "{{v.marksOnGun}}", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 3, "strength": 4 } },
      { "x": 158, "y": 52, "align": "right", "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "layer": "top", "textFormat": { "font": "$FieldFont", "size": 12, "color": "0x808080", "bold": true }, "format": "{{v.damageRating%2.01f~%|}}", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 66, "align": "right", "layer": "top", "textFormat": { "font": "$FieldFont", "size": 12, "color": "0x808080", "bold": true }, "format": "({{v.battletiermin}}-{{v.battletiermax}}) <font color='#DDDDDD'>{{v.rlevel}}</font>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 80, "align": "right", "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "layer": "top", "textFormat": { "font": "$FieldFont", "size": 13, "color": "{{v.premium?0xFFAA55|{{v.special?0x6FA500|0xDDDDDD}}}}", "bold": true }, "format": "<b>{{v.name}}</b>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "{{v.premium?0xFF4400|0x4C4C4C}}", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 139, "y": 83, "width": 19, "height": 15, "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "layer": "top", "src": "cfg://NDO/img/carousel/camouflage/{{v.camouflageSummer?s|n}}{{v.camouflageWinter?w|n}}{{v.camouflageDesert?d|n}}.png" },
      //{ "x": 1, "y": 1, "width": 160, "height": 100, "alpha": "{{v.selected?100|0}}", "borderColor": "0xFFF0AA", "layer": "top" },
      //{ "x": 0, "y": 0, "width": 162, "height": 102, "alpha": "{{v.selected?85|0}}", "borderColor": "0xFFF0AA", "layer": "top" },
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
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "favorite": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      "crystalsBorder": { "enabled": false, "alpha": 100 },
      "crystalsIcon": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100 },
      "stats": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      "progressionPoints": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    "extraFields": [
      //{ "x": 0, "y": 0, "width": 162, "height": 37, "alpha": 50, "bgColor": "0x000000", "layer": "substrate" },
      //{ "x": 0, "y": 0, "width": 162, "height": 37, "layer": "substrate", "src": "cfg://NDO/img/carousel/bgFrameSmall.png" },
      { "x": 3, "y": 5, "width": 26, "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "height": 26, "src": "img://gui/maps/vehicles/decals/{{.custom_texts.carousel.nation.{{v.nation}}}}.dds" },
      { "x": 1, "y": 6, "width": 30, "height": 24, "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "src": "cfg://NDO/img/carousel/vtype/{{v.type_key}}{{v.elite?_elite}}.png" },
      { "x": 30, "y": 2, "align": "left", "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "textFormat": { "font": "$FieldFont", "size": 12, "color": "0xDDDDDD", "bold": true }, "format": "{{v.winrate%2d~%|}}", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 2, "align": "left", "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": true, "textFormat": { "font": "$FieldFont", "size": "{{v.battles>0?12|0}}", "color": "0xDDDDDD", "bold": true }, "format": "{{v.battles%-5d}}", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 30, "y": 16, "align": "left", "textFormat": { "font": "$FieldFont", "size": 12, "color": "0x808080", "bold": true }, "format": "{{v.tdb%-4d|}}", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 80, "blur": 4, "strength": 2 } },
      { "x": 158, "y": 16, "align": "right", "hotKeyCode": 56, "onHold": true, "visibleOnHotKey": false, "layer": "top", "textFormat": { "font": "$FieldFont", "size": 13, "color": "{{v.premium?0xFFAA55|{{v.special?0x6FA500|0xDDDDDD}}}}", "bold": true }, "format": "<b>{{v.name}}</b>", "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "{{v.premium?0xFF4400|0x4C4C4C}}", "alpha": 80, "blur": 4, "strength": 2 } },
      //{ "x": 1, "y": 1, "width": 160, "height": 35, "alpha": "{{v.selected?100|0}}", "borderColor": "0xFFF0AA", "layer": "top" },
      //{ "x": 0, "y": 0, "width": 162, "height": 37, "alpha": "{{v.selected?85|0}}", "borderColor": "0xFFF0AA", "layer": "top" },
      {}
    ]
  }
}