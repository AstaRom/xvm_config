{
  "none": {
    "leftPanel": {
      "x": 0,
      "y": 25,
      "width": 350,
      "height": 25,
      "formats": []
    },
    "rightPanel": {
      "x": 0,
      "y": 25,
      "width": 350,
      "height": 25,
      "formats": []
    }
  },
  "shortLeft": [
    { "x": 0, "y": 0, "valign": "center", "width": 56, "height": 24, "src": "cfg://NDO/img/playersPanel/{{player?player|{{ready?{{squad?squad|ready}}|a-noready}}}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{player?#FFB964|{{squad?{{c:system}}|{{tk?{{c:system}}}}}}}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.xmqp_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "width": 60, "height": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "width": "{{hp-ratio:56}}", "height": 18, "bgColor": "{{player?#FFB964|{{c:system}}}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|{{hp-max|-----}}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "shortRight": [
    { "x": 0, "y": 0, "valign": "center", "width": 56, "height": 24, "src": "cfg://NDO/img/playersPanel/{{ready?ready|e-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.spotted_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "width": 60, "height": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "width": "{{hp-ratio:56}}", "height": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|{{hp-max|-----}}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "mediumLeft": [
    { "x": 0, "y": 0, "valign": "center", "width": 173, "height": 24, "src": "cfg://NDO/img/playersPanel/{{player?player|{{ready?{{squad?squad|ready}}|a-noready}}}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{player?#FFB964|{{squad?{{c:system}}|{{tk?{{c:system}}}}}}}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "x": 54, "align": "left", "valign": "center", "format": "<font size='14' color='{{xvm-stat?{{c:r}}}}'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.xmqp_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "width": 60, "height": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "width": "{{hp-ratio:56}}", "height": 18, "bgColor": "{{player?#FFB964|{{c:system}}}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|{{hp-max|-----}}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "mediumRight": [
    { "x": 0, "y": 0, "valign": "center", "width": 173, "height": 24, "src": "cfg://NDO/img/playersPanel/{{ready?ready|e-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "x": 55, "align": "right", "valign": "center", "format": "<font size='14' color='{{xvm-stat?{{c:r}}}}'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.spotted_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "width": 60, "height": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "width": "{{hp-ratio:56}}", "height": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|{{hp-max|-----}}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "medium2Left": [
    { "x": 0, "y": 0, "valign": "center", "width": "{{xvm-stat?141|138}}", "height": 24, "src": "cfg://NDO/img/playersPanel/{{player?player|{{ready?{{squad?squad|ready}}|a-noready}}}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{player?#FFB964|{{squad?{{c:system}}|{{tk?{{c:system}}}}}}}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": "{{xvm-stat?true|false}}", "x": 134, "y": 1, "align": "right", "valign": "center", "format": "<font face='NDO' size='14'><b><font color='{{c:t-battles}}'>{{t-battles%5d|-----}}</font> * <font color='{{c:t-winrate}}'>{{t-winrate%2d~%|--%}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 92, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.xmqp_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "width": 60, "height": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "width": "{{hp-ratio:56}}", "height": 18, "bgColor": "{{player?#FFB964|{{c:system}}}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|{{hp-max|-----}}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "medium2Right": [
    { "x": 0, "y": 0, "valign": "center", "width": "{{xvm-stat?141|138}}", "height": 24, "src": "cfg://NDO/img/playersPanel/{{ready?ready|e-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": "{{xvm-stat?true|false}}", "x": 54, "y": 1, "align": "right", "valign": "center", "format": "<font face='NDO' size='14'><b><font color='{{c:t-battles}}'>{{t-battles%5d|-----}}</font> * <font color='{{c:t-winrate}}'>{{t-winrate%2d~%|--%}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 93, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.spotted_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "width": 60, "height": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "width": "{{hp-ratio:56}}", "height": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|{{hp-max|-----}}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "largeLeft": [
    { "x": 0, "y": 0, "valign": "center", "width": "{{xvm-stat?181|238}}", "height": 24, "src": "cfg://NDO/img/playersPanel/{{player?player|{{ready?{{squad?squad|ready}}|a-noready}}}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{player?#FFB964|{{squad?{{c:system}}|{{tk?{{c:system}}}}}}}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": "{{xvm-stat?true|false}}", "x": 175, "y": 1, "align": "right", "valign": "center", "format": "<font face='NDO' size='14'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 54, "y": 0, "align": "left", "valign": "center", "format": "<font size='14'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 192, "align": "center", "valign": "center", "format": "<font size='14'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.xmqp_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "width": 60, "height": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "width": "{{hp-ratio:56}}", "height": 18, "bgColor": "{{player?#FFB964|{{c:system}}}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|{{hp-max|-----}}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "largeRight": [
    { "x": 0, "y": 0, "valign": "center", "width": "{{xvm-stat?181|238}}", "height": 24, "src": "cfg://NDO/img/playersPanel/{{ready?ready|e-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": "{{xvm-stat?true|false}}", "x": 55, "y": 1, "align": "right", "valign": "center", "format": "<font face='NDO' size='14'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 55, "y": 0, "align": "right", "valign": "center", "format": "<font size='14'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 193, "align": "center", "valign": "center", "format": "<font size='14'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.spotted_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "width": 60, "height": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "width": "{{hp-ratio:56}}", "height": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|{{hp-max|-----}}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "enabled": true, "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ]
}