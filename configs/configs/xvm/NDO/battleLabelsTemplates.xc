{
  "def": {
    "hp_teams_sign": {
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
      "format": "<font color='#{{py:color_sign_hp()}}'><b>{{py:current_hp(0)}} {{py:sign_hp()}} {{py:current_hp(1)}}</b></font>"
    }
  }
}