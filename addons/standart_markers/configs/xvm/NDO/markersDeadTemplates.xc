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
      "y": -67,
      "alpha": 100,
      "textFormat": { "font": "$FieldFont", "size": 18, "color": null, "align": "center", "bold": false, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 3, "strength": 1 },
      "speed": 2,
      "maxRange": 40,
      "damageMessage": "{{dmg}}",
      "blowupMessage": "{{l10n:blownUp}}\n{{dmg}}"
    },
    // Всплывающий урон для игрока
    "damageTextPlayer": {
      "enabled": true,
      "x": 0,
      "y": -67,
      "alpha": 100,
      "textFormat": { "font": "$FieldFont", "size": 18, "color": null, "align": "center", "bold": false, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 3, "strength": 1 },
      "speed": 2,
      "maxRange": 40,
      "damageMessage": "{{dmg}}",
      "blowupMessage": "{{l10n:blownUp}}\n{{dmg}}"
    },
    // Всплывающий урон для взводного
    "damageTextSquadman": {
      "enabled": true,
      "x": 0,
      "y": -67,
      "alpha": 100,
      "textFormat": { "font": "$FieldFont", "size": 18, "color": null, "align": "center", "bold": false, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 3, "strength": 1 },
      "speed": 2,
      "maxRange": 40,
      "damageMessage": "{{dmg}}",
      "blowupMessage": "{{l10n:blownUp}}\n{{dmg}}"
    },
    // Маркеры команд из радиального меню
    "actionMarker": {
      "enabled": true,
      "x": 0,
      "y": -67,
      "alpha": 100
    },
    // Маркер оглушения
    "stunMarker": {
      "enabled": true,
      "x": 0,
      "y": -67,
      "alpha": 100
    },
    // Блок текстовых полей / textFields
    "vehicleName": {
      "name": "Название техники",
      "enabled": true,
      "x": 0,
      "y": -20,
      "alpha": 80,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 6, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 13, "color": null, "align": "center", "bold": false, "italic": false },
      "format": "{{vehicle}}"
    },
    "playerName": {
      "name": "Никнейм игрока",
      "enabled": true,
      "x": 0,
      "y": -34,
      "alpha": 80,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 6, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 13, "color": null, "align": "center", "bold": false, "italic": false },
      "format": "{{name%.16s~..}}{{clan}}"
    }
  }
}