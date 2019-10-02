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
    "visible": false,
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
    "damageMessage": "<font face='NDO' size='30'>&#x0047;</font><br>{{dmg}}",
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
    "damageMessage": "<font face='NDO' size='30'>&#x0047;</font><br>{{dmg}}",
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
    "damageMessage": "<font face='NDO' size='30'>&#x0047;</font><br>{{dmg}}",
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
    "y": -85,
    "alpha": 100
  },
  "textFields": [
    {
      "name": "Название техники",
      "visible": true,
      "x": 0,
      "y": -20,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 14, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{vehicle}}"
    },
    {
      "name": "Никнейм игрока",
      "visible": true,
      "x": 0,
      "y": -35,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 14, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{name%.16s~..}} <font color='#ff9900'>{{clan}}</font>"
    }
  ]
}