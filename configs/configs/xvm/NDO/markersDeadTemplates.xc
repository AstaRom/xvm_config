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
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 150 }
  },
  "damageText": {
    "visible": true,
    "x": 0,
    "y": -85,
    "alpha": 100,
    "color": null,
    "font": { "name": "$FieldFont", "size": 16, "align": "center", "bold": true, "italic": false },
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 2, "strength": 200 },
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
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 2, "strength": 200 },
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
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 2, "strength": 200 },
    "speed": 2,
    "maxRange": 50,
    "damageMessage": "<font face='NDO' size='30'>&#x0047;</font><br>{{dmg}}",
    "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
  },
  "actionMarker": {
    "visible": true,
    "x": 0,
    "y": -90,
    "alpha": 100
  },
	
  // textFields
	
  "tankName": {
    "name": "Название техники",
    "visible": true,
    "x": 0,
    "y": -20,
    "alpha": 100,
    "color": null,
    "font": { "name": "$FieldFont", "size": 14, "align": "center", "bold": true, "italic": false },
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
    "format": "{{vehicle}}"
  },
  "playerName": {
    "name": "Никнейм игрока",
    "visible": true,
    "x": 0,
    "y": -35,
    "alpha": 100,
    "color": null,
    "font": { "name": "$FieldFont", "size": 14, "align": "center", "bold": true, "italic": false },
    "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
    "format": "{{name%.16s~..}} <font color='#ff9900'>{{clan}}</font>"
  }
}