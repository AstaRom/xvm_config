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
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 150 }
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
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 2, "strength": 200 },
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
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 2, "strength": 200 },
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
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 2, "strength": 200 },
      "speed": 2,
      "maxRange": 50,
      "damageMessage": "{{dmg}}",
      "blowupMessage": "<font face='NDO' size='30'>&#x0048;</font><br>{{dmg}}"
    },
    "actionMarker": {
      "visible": true,
      "x": 0,
      "y": -73,
      "alpha": 100
    },

    // textFields

    "tankName": {
      "name": "Название техники",
      "visible": true,
      "x": 0,
      "y": -44,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 14, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{vehicle}}{{turret}}"
    },
    "playerName": {
      "name": "Никнейм игрока",
      "visible": true,
      "x": 0,
      "y": -44,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 14, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{name%.16s~..}} <font color='#ff9900'>{{clan}}</font>"
    },
    "hp": {
      "name": "Здоровье",
      "visible": true,
      "x": 0,
      "y": -22,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 13, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{hp}} / {{hp-max}}"
    },
    "hp_ratio": {
      "name": "Здоровье (Процент)",
      "visible": true,
      "x": 0,
      "y": -22,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 13, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{hp-ratio}}%"
    },
    "eff_marker": {
      "name": "Маркер эффективности",
      "visible": true,
      "x": -45,
      "y": -33,
      "alpha": "{{xvm-stat?100|0}}",
      "color": null,
      "font": { "name": "NDO", "size": 15, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font color='{{c:r}}' size='{{r?15|0}}'>&#x0049;</font>"
    },
    "stat_marker": {
      "name": "Панель эффективности",
      "visible": true,
      "x": 0,
      "y": -60,
      "alpha": "{{xvm-stat?100|0}}",
      "color": null,
      "font": { "name": "$FieldFont", "size": 13, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font size='{{r?13|0}}'><font color='{{c:kb}}'>{{kb%2d~k|--k}}</font>   <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font>   <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></font>"
    },
    "squad_marker_fon": {
      "name": "Маркер взвода (фон)",
      "visible": true,
      "x": 48,
      "y": -38,
      "alpha": "{{squad-num?100|0}}",
      "color": "0x000000",
      "font": { "name": "NDO", "size": 0, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font size='{{squad?0|28}}'>&#x004D;</font>"
    },
    "squad_marker_frame": {
      "name": "Маркер взвода (рамка)",
      "visible": true,
      "x": 48,
      "y": -38,
      "alpha": "{{squad-num?100|0}}",
      "color": null,
      "font": { "name": "NDO", "size": 0, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font size='{{squad?0|28}}'>&#x004C;</font>"
    },
    "squad_marker_number": {
      "name": "Маркер взвода (номер)",
      "visible": true,
      "x": 48,
      "y": -33,
      "alpha": "{{squad-num?100|0}}",
      "color": "0xFFFFFF",
      "font": { "name": "$FieldFont", "size": 0, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 45, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font size='{{squad?0|12}}'>{{squad-num}}</font>"
    },
    "lowHp_marker": {
      "name": "Маркер помощи / Маркер атаки",
      "visible": true,
      "x": 0,
      "y": -80,
      "alpha": "{{hp-ratio<25?70|0}}",
      "color": null,
      "font": { "name": "NDO", "size": 38, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 90, "color": "0x000000", "angle": 45, "distance": 0, "size": 2, "strength": 200 },
      "format": "{{ally?&#x004A;|&#x004B;}}"
    },    
    "xmqp_marker": {
      "name": "Маркеры XMQP",
      "visible": true,
      "x": 0,
      "y": -80,
      "alpha": "{{hp-ratio<25?0|70}}",
      "color": null,
      "font": { "name": "NDO", "size": 38, "align": "center", "bold": false, "italic": false },
      "shadow": { "alpha": 90, "color": "0x000000", "angle": 45, "distance": 0, "size": 2, "strength": 200 },
      "format": "{{x-spotted?&#x004F;|{{x-fire?&#x0050;|{{x-overturned?&#x0051;|{{x-drowning?&#x0052;}}}}}}}}"
    }
  }
}