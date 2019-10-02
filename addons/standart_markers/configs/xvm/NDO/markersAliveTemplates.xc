{
  "def": {
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
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 6, "strength": 200 }
    },
    "healthBar": {
      "visible": true,
      "x": -41,
      "y": -33,
      "alpha": 100,
      "color": null,
      "lcolor": null,
      "width": 80,
      "height": 12,
      "border": { "alpha": 30, "color": "0x000000", "size": 1 },
      "fill": { "alpha": 30 },
      "damage": { "alpha": 100, "color": "{{c:dmg}}", "fade": 1 }
    },
    "damageText": {
      "visible": true,
      "x": 0,
      "y": -67,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 18, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 6, "strength": 200 },
      "speed": 2,
      "maxRange": 40,
      "damageMessage": "{{dmg}}",
      "blowupMessage": "{{l10n:blownUp}}\n{{dmg}}"
    },
    "damageTextPlayer": {
      "visible": true,
      "x": 0,
      "y": -67,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 18, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 6, "strength": 200 },
      "speed": 2,
      "maxRange": 40,
      "damageMessage": "{{dmg}}",
      "blowupMessage": "{{l10n:blownUp}}\n{{dmg}}"
    },
    "damageTextSquadman": {
      "visible": true,
      "x": 0,
      "y": -67,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 18, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 6, "strength": 200 },
      "speed": 2,
      "maxRange": 40,
      "damageMessage": "{{dmg}}",
      "blowupMessage": "{{l10n:blownUp}}\n{{dmg}}"
    },
    "actionMarker": {
      "visible": true,
      "x": 0,
      "y": -67,
      "alpha": 100
    },

    // textFields

    "tankName": {
      "name": "Название техники",
      "visible": true,
      "x": 0,
      "y": -36,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 13, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 6, "strength": 200 },
      "format": "{{vehicle}}{{turret}}"
    },
    "playerName": {
      "name": "Никнейм игрока",
      "visible": true,
      "x": 0,
      "y": -36,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 13, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 6, "strength": 200 },
      "format": "{{name%.16s~..}}{{clan}}"
    },
    "hp": {
      "name": "Здоровье",
      "visible": true,
      "x": 0,
      "y": -20,
      "alpha": 100,
      "color": "0xFCFCFC",
      "font": { "name": "$FieldFont", "size": 11, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 4, "strength": 100 },
      "format": "{{hp}} / {{hp-max}}"
    },
    "hp_ratio": {
      "name": "Здоровье (Процент)",
      "visible": true,
      "x": 0,
      "y": -20,
      "alpha": 100,
      "color": "0xFCFCFC",
      "font": { "name": "$FieldFont", "size": 11, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 4, "strength": 100 },
      "format": "{{hp-ratio}}%"
    },
    "eff_marker": {
      "name": "Маркер эффективности",
      "visible": true,
      "x": -40,
      "y": -27,
      "alpha": "{{xvm-stat?100|0}}",
      "color": null,
      "font": { "name": "NDO", "size": 15, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font color='{{c:r}}' size='{{r?15|0}}'>&#x0049;</font>"
    }
  }
}