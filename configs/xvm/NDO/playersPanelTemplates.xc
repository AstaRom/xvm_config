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
    { "x": 0, "y": 0, "w": 56, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|A-noready}}{{player}}{{squad}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{player?#FFB964}}'><font color='{{squad?#FFB964}}'><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></font></font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.xmqp_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "shortRight": [
    { "x": 0, "y": 0, "w": 56, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|E-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.spotted_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.short"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "mediumLeft": [
    { "x": 0, "y": 0, "w": 173, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|A-noready}}{{player}}{{squad}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{player?#FFB964}}'><font color='{{squad?#FFB964}}'><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></font></font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "x": 54, "align": "left", "valign": "center", "format": "<font size='14' color='{{xvm-stat?{{c:r}}}}'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.xmqp_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "mediumRight": [
    { "x": 0, "y": 0, "w": 173, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|E-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "x": 54, "align": "right", "valign": "center", "format": "<font size='14' color='{{xvm-stat?{{c:r}}}}'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.spotted_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "medium2Left": [
    { "x": 0, "y": 0, "w": "{{xvm-stat?141|138}}", "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|A-noready}}{{player}}{{squad}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{player?#FFB964}}'><font color='{{squad?#FFB964}}'><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></font></font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": "{{xvm-stat?true|false}}", "x": 133, "y": 1, "align": "right", "valign": "center", "format": "<font face='NDO' size='14'><b><font color='{{c:t-battles}}'>{{t-battles%5d|-----}}</font> * <font color='{{c:t-winrate}}'>{{t-winrate%2d~%|--%}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 92, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.xmqp_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "medium2Right": [
    { "x": 0, "y": 0, "w": "{{xvm-stat?141|138}}", "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|E-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": "{{xvm-stat?true|false}}", "x": 54, "y": 1, "align": "right", "valign": "center", "format": "<font face='NDO' size='14'><b><font color='{{c:t-battles}}'>{{t-battles%5d|-----}}</font> * <font color='{{c:t-winrate}}'>{{t-winrate%2d~%|--%}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 92, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.spotted_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.medium2"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "largeLeft": [
    { "x": 0, "y": 0, "w": "{{xvm-stat?181|238}}", "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|A-noready}}{{player}}{{squad}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{player?#FFB964}}'><font color='{{squad?#FFB964}}'><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></font></font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": "{{xvm-stat?true|false}}", "x": 174, "y": 1, "align": "right", "valign": "center", "format": "<font face='NDO' size='14'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 54, "y": 0, "align": "left", "valign": "center", "format": "<font size='14'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 192, "align": "center", "valign": "center", "format": "<font size='14'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.xmqp_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ],
  "largeRight": [
    { "x": 0, "y": 0, "w": "{{xvm-stat?181|238}}", "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|E-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><b><font color='{{tk?#00EAFF}}'>{{frags|0}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    { "enabled": "{{xvm-stat?true|false}}", "x": 55, "y": 1, "align": "right", "valign": "center", "format": "<font face='NDO' size='14'><b><font color='{{c:kb}}'>{{kb%3d~k|---k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></b></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 54, "y": 0, "align": "right", "valign": "center", "format": "<font size='14'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": "{{xvm-stat?false|true}}", "x": 192, "align": "center", "valign": "center", "format": "<font size='14'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.spotted_marker"}, "x": 90, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 1 } },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 100, "y": 2, "bindToIcon": true, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 102, "y": 4, "bindToIcon": true, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "enabled": ${"@settings.xc":"settings.playersPanel.hp_panels.large"}, "x": 130, "y": 2, "bindToIcon": true, "align": "center", "format": "<font size='14'><b>{{hp|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2 } },
    {}
  ]
}