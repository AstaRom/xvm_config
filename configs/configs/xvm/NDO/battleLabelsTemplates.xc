{
  "def": {
    "totalHP": {
      "enabled": false,
      "updateEvent": "ON_PLAYERS_HP_CHANGED",
      "x": 0,
      "y": 30,
      "width": 150,
      "height": 24,
      "alpha": 100, 
      "autoSize": "none",
      "align": "center", 
      "valign": "top",
      "antiAliasType": "advanced",     
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 }, 
      "currentFieldDefaultStyle": { "color": "0xFCFCFC", "size": 16, "align": "center" },
      "format": "<font color='#{{py:xvm.frag_correlation.color_hp()}}'><b>{{py:xvm.frag_correlation.ally()}} {{py:xvm.frag_correlation.sign()}} {{py:xvm.frag_correlation.enemy()}}</b></font>"
    }
  }
}