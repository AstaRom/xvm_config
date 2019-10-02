{
  "def": {
    // Иконка типа танка
    "vehicleIcon": {
      "enabled": true,
      "showSpeaker": false,
      "x": 0,
      "y": -16,
      "alpha": 100,
      "maxScale": 100,
      "offsetX": 0,
      "offsetY": 0
    },
    // Всплывающий урон для союзника
    "damageText": {
      "enabled": true,
      "x": 0,
      "y": -85,
      "alpha": 100,
      "textFormat": { "font": "$FieldFont", "size": 16, "color": null, "align": "center", "bold": true, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 2, "strength": 2 },
      "speed": 2,
      "maxRange": 50,
      "damageMessage": "<font face='NDO' size='30'>&#x0047;</font><br>{{dmg}}",
      "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
    },
    // Всплывающий урон для игрока
    "damageTextPlayer": {
      "enabled": true,
      "x": 0,
      "y": -85,
      "alpha": 100,
      "textFormat": { "font": "$FieldFont", "size": 16, "color": null, "align": "center", "bold": true, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 2, "strength": 2 },
      "speed": 2,
      "maxRange": 50,
      "damageMessage": "<font face='NDO' size='30'>&#x0047;</font><br>{{dmg}}",
      "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
    },
    // Всплывающий урон для взводного
    "damageTextSquadman": {
      "enabled": true,
      "x": 0,
      "y": -85,
      "alpha": 100,
      "textFormat": { "font": "$FieldFont", "size": 16, "color": null, "align": "center", "bold": true, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 2, "strength": 2 },
      "speed": 2,
      "maxRange": 50,
      "damageMessage": "<font face='NDO' size='30'>&#x0047;</font><br>{{dmg}}",
      "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
    },
    // Маркеры команд из радиального меню
    "actionMarker": {
      "enabled": true,
      "x": 0,
      "y": -73,
      "alpha": 100
    },
    // Блок текстовых полей / textFields
    "tankName": {
      "font": "Название техники",
      "enabled": true,
      "x": 0,
      "y": -20,
      "alpha": 100,
      "textFormat": { "font": "$FieldFont", "size": 14, "color": null, "align": "center", "bold": true, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "format": "{{vehicle}}"
    },
    "playerName": {
      "font": "Никнейм игрока",
      "enabled": true,
      "x": 0,
      "y": -35,
      "alpha": 100,
      "textFormat": { "font": "$FieldFont", "size": 14, "color": null, "align": "center", "bold": true, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "format": "{{name%.16s~..}} <font color='#ff9900'>{{clan}}</font>"
    }
  }
}