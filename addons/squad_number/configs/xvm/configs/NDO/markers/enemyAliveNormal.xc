{
  "vehicleIcon": {
    "visible": true,
    "showSpeaker": false,
    "x": 0,
    "y": -16,
    "alpha": 100,
    "color": null,
    "maxScale": 100,
    "scaleX": 0,
    "scaleY": 16,
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 }
  },
  "healthBar": {
    "visible": true,
    "x": -36,
    "y": -40,
    "alpha": 100,
    "color": null,
    "lcolor": null,
    "width": 70,
    "height": 3,
    "border": { "alpha": 50, "color": "0x000000", "size": 1 },
    "fill": { "alpha": 80 },
    "damage": { "alpha": 80, "color": "0xCCCCCC", "fade": 2 }
  },
  "damageText": {
    "visible": true,
    "x": 0,
    "y": -85,
    "alpha": 100,
    "color": null,
    "font": { "name": "$FieldFont", "size": 16, "align": "center", "bold": true, "italic": false },
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 2, "strength": 200 },
    "speed": 2,
    "maxRange": 50,
    "damageMessage": "{{dmg}}",
    "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
  },
  "damageTextPlayer": {
    "visible": true,
    "x": 0,
    "y": -85,
    "alpha": 100,
    "color": null,
    "font": { "name": "$FieldFont", "size": 16, "align": "center", "bold": true, "italic": false },
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 2, "strength": 200 },
    "speed": 2,
    "maxRange": 50,
    "damageMessage": "{{dmg}}",
    "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
  },
  "damageTextSquadman": {
    "visible": true,
    "x": 0,
    "y": -85,
    "alpha": 100,
    "color": null,
    "font": { "name": "$FieldFont", "size": 16, "align": "center", "bold": true, "italic": false },
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 2, "strength": 200 },
    "speed": 2,
    "maxRange": 50,
    "damageMessage": "{{dmg}}",
    "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
  },
  "contourIcon": {
    "visible": false,
    "x": 5,
    "y": -85,
    "alpha": 100,
    "color": null,
    "amount": 0
  },
  "clanIcon": {
    "visible": false,
    "x": 0,
    "y": -85,
    "w": 20,
    "h": 20,
    "alpha": 100
  },
  "levelIcon": {
    "visible": false,
    "x": 0,
    "y": -21,
    "alpha": 100
  },
  "actionMarker": {
    "visible": true,
    "x": 0,
    "y": -90,
    "alpha": 100
  },
  "textFields": [
    {
      "name": "Название техники",
      "visible": true,
      "x": 0,
      "y": -44,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 14, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{vehicle}}{{turret}}"
    },
    {
      "name": "Здоровье",
      "visible": true,
      "x": 0,
      "y": -22,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 13, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{hp}} / {{hp-max}}"
    },
    {
      "name": "Маркер атаки",
      "visible": true,
      "x": 0,
      "y": -95,
      "alpha": "{{a:hp-ratio}}",
      "color": null,
      "font": { "name": "NDO", "size": 35, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "&#x004B;"
    },
    {
      "name": "Маркер эффективности",
      "visible": true,
      "x": -45,
      "y": -35,
      "alpha": "{{xvm-stat?100|0}}",
      "color": null,
      "font": { "name": "NDO", "size": 15, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font color='{{c:r}}' size='{{r?15|0}}'>&#x0049;</font>"
    },
    {
      "name": "Маркер взвода (фон)",
      "visible": true,
      "x": 48,
      "y": -42,
      "alpha": "{{squad-num?100|0}}",
      "color": "0x000000",
      "font": { "name": "NDO", "size": 0, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font size='{{squad?0|28}}'>&#x004D;</font>"
    },
    {
      "name": "Маркер взвода (рамка)",
      "visible": true,
      "x": 48,
      "y": -42,
      "alpha": "{{squad-num?100|0}}",
      "color": null,
      "font": { "name": "NDO", "size": 0, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font size='{{squad?0|28}}'>&#x004C;</font>"
    },
    {
      "name": "Маркер взвода (номер)",
      "visible": true,
      "x": 48,
      "y": -33,
      "alpha": "{{squad-num?100|0}}",
      "color": "0xFFFFFF",
      "font": { "name": "$FieldFont", "size": 0, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font size='{{squad?0|12}}'>{{squad-num}}</font>"
    }
  ]
}