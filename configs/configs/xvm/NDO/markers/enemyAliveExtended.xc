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
      "name": "Никнейм игрока",
      "visible": true,
      "x": 0,
      "y": -44,
      "alpha": 100,
      "color": null,
      "font": { "name": "$FieldFont", "size": 14, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "{{name%.16s~..}} <font color='#ff9900'>{{clan}}</font>"
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
      "format": "{{hp-ratio}}%"
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
      "x": 0,
      "y": -60,
      "alpha": "{{xvm-stat?100|0}}",
      "color": null,
      "font": { "name": "$FieldFont", "size": 13, "align": "center", "bold": true, "italic": false },
      "shadow": { "alpha": 100, "color": "0x000000", "angle": 90, "distance": 0, "size": 1, "strength": 200 },
      "format": "<font size='{{r?13|0}}'><font color='{{c:kb}}'>{{kb%2d~k|--k}}</font>   <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font>   <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></font>"
    }
  ]
}