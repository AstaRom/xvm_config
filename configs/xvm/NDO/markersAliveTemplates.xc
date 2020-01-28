{
  "def": {
    // Иконка типа техники
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
    // Индикатор запаса прочности
    "healthBar": {
      "enabled": true,
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
      "damageMessage": "{{dmg}}",
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
      "damageMessage": "{{dmg}}",
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
      "damageMessage": "{{dmg}}",
      "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
    },
    // Маркеры команд из радиального меню
    "actionMarker": {
      "enabled": true,
      "x": 0,
      "y": -73,
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
      "y": -44,
      "alpha": 100,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 14, "color": null, "align": "center", "bold": true, "italic": false },
      "format": "{{vehicle}}{{turret}}"
    },
    "playerName": {
      "name": "Никнейм игрока",
      "enabled": true,
      "x": 0,
      "y": -44,
      "alpha": 100,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 14, "color": null, "align": "center", "bold": true, "italic": false },
      "format": "{{name%.16s~..}} <font color='{{topclan=top?#FF5500|#FF9900}}'>{{clan}}</font>"
    },
    "hp": {
      "name": "Запас прочности",
      "enabled": true,
      "x": 0,
      "y": -22,
      "alpha": 100,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 13, "color": null, "align": "center", "bold": true, "italic": false },
      "format": "{{hp}} / {{hp-max}}"
    },
    "hp_ratio": {
      "name": "Запас прочности (в процентах)",
      "enabled": true,
      "x": 0,
      "y": -22,
      "alpha": 100,
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 13, "color": null, "align": "center", "bold": true, "italic": false },
      "format": "{{hp-ratio}}%"
    },
    "eff_marker": {
      "name": "Маркер эффективности",
      "enabled": true,
      "x": -45,
      "y": -33,
      "alpha": "{{xvm-stat?100|0}}",
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "NDO", "size": 15, "color": null, "align": "center", "bold": false, "italic": false },
      "format": "<font color='{{c:xr}}' size='{{r?15|0}}'>&#x0049;</font>"
    },
    "stat_marker": {
      "name": "Панель эффективности",
      "enabled": true,
      "x": 0,
      "y": -60,
      "alpha": "{{xvm-stat?100|0}}",
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 13, "color": null, "align": "center", "bold": true, "italic": false },
      "format": "<font size='{{r?13|0}}'><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font>   <font color='{{c:xr}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?xxxx|{{r%4d|----}}}}}}</font>   <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></font>"
    },
    "squad_marker_fon": {
      "name": "Маркер взвода (фон)",
      "enabled": ${ "@settings.xc": "settings.markers.squad_number" },
      "x": 48,
      "y": -38,
      "alpha": "{{squad-num?100|0}}",
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "NDO", "size": 0, "color": "0x000000", "align": "center", "bold": false, "italic": false },
      "format": "<font size='{{squad?0|28}}'>&#x004D;</font>"
    },
    "squad_marker_frame": {
      "name": "Маркер взвода (рамка)",
      "enabled": ${ "@settings.xc": "settings.markers.squad_number" },
      "x": 48,
      "y": -38,
      "alpha": "{{squad-num?100|0}}",
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "NDO", "size": 0, "color": null, "align": "center", "bold": false, "italic": false },
      "format": "<font size='{{squad?0|28}}'>&#x004C;</font>"
    },
    "squad_marker_number": {
      "name": "Маркер взвода (номер)",
      "enabled": ${ "@settings.xc": "settings.markers.squad_number" },
      "x": 48,
      "y": -33,
      "alpha": "{{squad-num?100|0}}",
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 0, "color": "0xFFFFFF", "align": "center", "bold": true, "italic": false },
      "format": "<font size='{{squad?0|12}}'>{{squad-num}}</font>"
    },
    "lowHp_marker": {
      "name": "Маркер помощи / Маркер атаки",
      "enabled": ${ "@settings.xc": "settings.markers.lowHp_marker" },
      "x": 0,
      "y": -80,
      "alpha": "{{hp-ratio<25?70|0}}",
      "shadow": { "enabled": true, "distance": 0, "angle": 45, "color": "0x000000", "alpha": 90, "blur": 2, "strength": 2 },
      "textFormat": { "font": "NDO", "size": 38, "color": null, "align": "center", "bold": false, "italic": false },
      "format": "{{ally?&#x004A;|&#x004B;}}"
    }
  }
}