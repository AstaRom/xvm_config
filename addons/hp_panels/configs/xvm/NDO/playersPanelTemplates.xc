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
    { "x": 0, "y": 0, "w": 57, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|A-noready}}{{player}}{{squad}}.png", "alpha": "{{alive?35|0}}" },	
    { "x": 40, "y": 0, "align": "center", "valign": "center", "format": "<font size='14'><font color='{{player?#FFB964}}'><font color='{{squad?#FFB964}}'><font color='{{tk?#00EAFF}}'>{{frags%2d}}</font></font></font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 2 } },
    //{ "x": 5, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 190, "y": 2, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "x": 192, "y": 4, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "x": 220, "y": 0, "align": "center", "valign": "center", "format": "<font size='12'><b>{{hp%4.4s|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 2 } },
    {}
  ],
  "shortRight": [
    { "x": 0, "y": 0, "w": 57, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|E-noready}}.png", "alpha": "{{alive?35|0}}" },	
    { "x": 40, "y": 0,"align": "center", "valign": "center", "format": "<font size='14'><font color='{{tk?#00EAFF}}'>{{frags%2d}}</font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 2 } },
    { "x": 5, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 190, "y": 2, "valign": "center", "w": 60, "h": 22, "bgColor": "0x000000", "alpha": "{{alive?50|0}}" },
    { "x": 192, "y": 4, "valign": "center", "w": "{{hp-ratio:56}}", "h": 18, "bgColor": "{{c:system}}", "alpha": "{{alive?50|0}}" },
    { "x": 220, "y": 0, "align": "center", "valign": "center", "format": "<font size='12'><b>{{hp%4.4s|-----}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 2 } },
    {}
  ],
  "mediumLeft": [
    { "x": 0, "y": 0, "w": 183, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|A-noready}}{{player}}{{squad}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 30, "align": "left", "valign": "center", "format": "<font size='14' color='{{xvm-stat?{{c:r}}}}'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 155, "align": "center", "valign": "center", "format": "<font size='14'><font color='{{player?#FFB964}}'><font color='{{squad?#FFB964}}'><font color='{{tk?#00EAFF}}'>{{frags%2d}}</font></font></font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    //{ "x": 5, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    {}
  ],
  "mediumRight": [
    { "x": 0, "y": 0, "w": 183, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|E-noready}}.png", "alpha": "{{alive?35|0}}" },	
    { "x": 30, "align": "right", "valign": "center", "format": "<font size='14' color='{{xvm-stat?{{c:r}}}}'>{{name%.15s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 155, "align": "center", "valign": "center", "format": "<font size='14'><font color='{{tk?#00EAFF}}'>{{frags%2d}}</font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 5, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    {}
  ],
  "medium2Left": [
    { "x": 0, "y": 0, "w": 137, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|A-noready}}{{player}}{{squad}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 70, "y": "{{xvm-stat?1}}", "align": "center", "valign": "center", "format": "<font size='{{xvm-stat?0|14}}'>{{vehicle}}</font><font face='NDO' size='{{xvm-stat?14|0}}'><font color='{{c:t-battles}}'>{{t-battles%4d|----}}</font> * <font color='{{c:t-winrate}}'>{{t-winrate%2d~%|--%}}</font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 125, "align": "center", "valign": "center", "format": "<font size='14'><font color='{{player?#FFB964}}'><font color='{{squad?#FFB964}}'><font color='{{tk?#00EAFF}}'>{{frags%2d}}</font></font></font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    //{ "x": 5, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    {}
  ],
  "medium2Right": [
    { "x": 0, "y": 0, "w": 137, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|E-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 70, "y": "{{xvm-stat?1}}", "align": "center", "valign": "center", "format": "<font size='{{xvm-stat?0|14}}'>{{vehicle}}</font><font face='NDO' size='{{xvm-stat?14|0}}'><font color='{{c:t-battles}}'>{{t-battles%4d|----}}</font> * <font color='{{c:t-winrate}}'>{{t-winrate%2d~%|--%}}</font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 125, "align": "center", "valign": "center", "format": "<font size='14'><font color='{{tk?#00EAFF}}'>{{frags%2d}}</font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 5, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    {}
  ],
  "largeLeft": [
    { "x": 0, "y": 0, "w": 177, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|A-noready}}{{player}}{{squad}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 30, "y": "{{xvm-stat?1}}", "align": "left", "valign": "center", "format": "<font size='{{xvm-stat?0|14}}'>{{name%.15s~..}}</font><font face='NDO' size='{{xvm-stat?14|0}}'><font color='{{c:kb}}'>{{kb%2d~k|--k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 220, "align": "center", "valign": "center", "format": "<font size='{{xvm-stat?0|14}}'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 160, "align": "center", "valign": "center", "format": "<font size='14'><font color='{{player?#FFB964}}'><font color='{{squad?#FFB964}}'><font color='{{tk?#00EAFF}}'>{{frags%2d}}</font></font></font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    //{ "x": 5, "y": 0, "align": "center", "bindToIcon": true, "format": "<font face='NDO' size='22' color='{{x-spotted?#FF8800|#CCCCCC}}'><b>{{x-sense-on?&#x0046;}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    {}
  ],
  "largeRight": [
    { "x": 0, "y": 0, "w": 177, "h": 24, "valign": "center", "src": "cfg://NDO/img/playersPanel/{{ready?|E-noready}}.png", "alpha": "{{alive?35|0}}" },
    { "x": 30, "y": "{{xvm-stat?1}}", "align": "right", "valign": "center", "format": "<font size='{{xvm-stat?0|14}}'>{{name%.15s~..}}</font><font face='NDO' size='{{xvm-stat?14|0}}'><font color='{{c:kb}}'>{{kb%2d~k|--k}}</font> * <font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font> * <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 220, "align": "center", "valign": "center", "format": "<font size='{{xvm-stat?0|14}}'>{{vehicle}}</font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 160, "align": "center", "valign": "center", "format": "<font size='14'><font color='{{tk?#00EAFF}}'>{{frags%2d}}</font></font>", "alpha": "{{alive?100|50}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    { "x": 5, "y": 0, "align": "center", "bindToIcon": true, "format": "<font color='{{c:spotted}}'>{{spotted}}</font>", "alpha": "{{alive?100|75}}", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 1 } },
    {}
  ]
}