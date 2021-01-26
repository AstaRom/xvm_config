{
  "clock": {
    "enabled": true,
    "layer": "top",
    "type": "extrafield",
    "formats": [
      {
        "x": "{{l10n:cl_bg}}",
        "y": 0,
        "width": 150,
        "height": 53,
        "screenHAlign": "center",
        "screenVAlign": "top",
        "src": "cfg://NDO/img/clock/bgClock.png"
      },
      {
        "updateEvent": "ON_EVERY_SECOND",
        "x": "{{l10n:cl_dig}}",
        "y": 0,
        "width": 150,
        "height": 53,
        "screenHAlign": "center",
        "screenVAlign": "top",
        "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 100, "blur": 4, "strength": 2 },
        "textFormat": { "font": "$FieldFont", "size": 23, "color": "0xBCBCBC", "align": "center", "valign": "top", "leading": -3, "marginRight": 25 },
        "format": "{{py:xvm.formatDate('%H:%M:%S')}}\n<font size='16'>{{py:xvm.formatDate('%d %bl, %al')}}</font>"
      }
    ]
  }
}