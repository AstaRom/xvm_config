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
    // Индикатор здоровья
    "healthBar": {
      "enabled": true,
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
    // Маркер оглушения и маркер боевого снаряжения в режиме "Линия фронта"
    "vehicleStatusMarker": {
      "enabled": true,
      "x": 0,
      "y": -73,
      "alpha": 100
    },
    // Индикатор урона
    "damageIndicator": {
      "enabled": true,
      "showText": true,
      "x": 53,
      "y": -27,
      "alpha": 100
    },
    // Блок текстовых полей / textFields
    "vehicleName": {
      "name": "Название техники",
      "enabled": true,
      "x": 0,
      "y": -36,
      "alpha": 100,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 6, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 13, "color": null, "align": "center", "bold": false, "italic": false },
      "format": "{{vehicle}}{{turret}}"
    },
    "playerName": {
      "name": "Никнейм игрока",
      "enabled": true,
      "x": 0,
      "y": -36,
      "alpha": 100,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 6, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 13, "color": null, "align": "center", "bold": false, "italic": false },
      "format": "{{name%.16s~..}}{{clan}}"
    },
    "hp": {
      "name": "Запас прочности",
      "enabled": true,
      "x": 0,
      "y": -20,
      "alpha": 100,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 4, "strength": 1 },
      "textFormat": { "font": "$FieldFont", "size": 11, "color": "0xFCFCFC", "align": "center", "bold": true, "italic": false },
      "format": "{{hp}} / {{hp-max}}"
    },
    "hp_ratio": {
      "name": "Запас прочности (в процентах)",
      "enabled": true,
      "x": 0,
      "y": -20,
      "alpha": 100,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 4, "strength": 1 },
      "textFormat": { "font": "$FieldFont", "size": 11, "color": "0xFCFCFC", "align": "center", "bold": true, "italic": false },
      "format": "{{hp-ratio}}%"
    },
    "eff_marker": {
      "name": "Маркер эффективности",
      "enabled": true,
      "x": -40,
      "y": -27,
      "alpha": "{{xvm-stat?100|0}}",
      "textFormat": { "font": "NDO", "size": 15, "color": null, "align": "center", "bold": false, "italic": false },
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "format": "<font color='{{c:r}}' size='{{r?15|0}}'>&#x0049;</font>"
    }
  }
}