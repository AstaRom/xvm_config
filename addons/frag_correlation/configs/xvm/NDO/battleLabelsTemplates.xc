﻿{
  "def": {
    "current_hp_ally": {
      "enabled": true,
      "updateEvent": "ON_PLAYERS_HP_CHANGED",
      "x": -255,
      "y": 4,
      "width": 50,
      "height": 24,
      "alpha": 75, 
      "autoSize": "none",
      "align": "center", 
      "valign": "top",
      "antiAliasType": "advanced",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 }, 
      "currentFieldDefaultStyle": { "color": "0xFCFCFC", "size": 16, "align": "center" },
      "format": "<b>{{py:xvm.hp_panel.current_hp(0)}}</b>"
    },
    "current_hp_enemy": {
      "enabled": true,
      "updateEvent": "ON_PLAYERS_HP_CHANGED",
      "x": 255,
      "y": 4,
      "width": 50,
      "height": 24,
      "alpha": 75, 
      "autoSize": "none",
      "align": "center", 
      "valign": "top",
      "antiAliasType": "advanced",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 }, 
      "currentFieldDefaultStyle": { "color": "0xFCFCFC", "size": 16, "align": "center" },
      "format": "<b>{{py:xvm.hp_panel.current_hp(1)}}</b>"
    },
    "panel_hp_ally": {
      "enabled": true,
      "updateEvent": "ON_PLAYERS_HP_CHANGED",
      "x": -137,
      "y": 5,
      "width": 192,
      "height": 70,
      "alpha": 75, 
      "autoSize": "none",
      "align": "center", 
      "valign": "top",
      "antiAliasType": "advanced",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 }, 
      "currentFieldDefaultStyle": { "color": "0xFCFCFC", "size": 18, "align": "right", "marginRight": 6, "leading": -19 },
      "format": "<font face='NDO'>{{py:xvm.hp_panel.max_hp_symbols('&#x0051;')}}<br/><font color='{{py:xvm.hp_panel.str_replace('{{.colors.system.ally_alive}}', '0x', '#')}}'>{{py:xvm.hp_panel.current_hp_symbols(0, '&#x0051;')}}</font></font>"
    },
    "panel_hp_enemy": {
      "enabled": true,
      "updateEvent": "ON_PLAYERS_HP_CHANGED",
      "x": 140,
      "y": 5,
      "width": 192,
      "height": 22,
      "alpha": 75, 
      "autoSize": "none",
      "align": "center", 
      "valign": "top",
      "antiAliasType": "advanced",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 }, 
      "currentFieldDefaultStyle": { "color": "0xFCFCFC", "size": 18, "align": "left", "marginLeft": 2, "leading": -19 },
      "format": "<font face='NDO'>{{py:xvm.hp_panel.max_hp_symbols('&#x0052;')}}<br/><font color='{{py:xvm.hp_panel.str_replace('{{.colors.system.enemy_alive}}', '0x', '#')}}'>{{py:xvm.hp_panel.current_hp_symbols(1, '&#x0052;')}}</font></font>"
    },
    "high_сaliber": {
      "enabled": true,
      "x": 0,
      "y": 30,
      "width": 120,
      "height": 50,
      "alpha": 75, 
      "autoSize": "none",
      "align": "center", 
      "valign": "top",
      "antiAliasType": "advanced",     
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 }, 
      "currentFieldDefaultStyle": { "color": "0xFCFCFC", "size": 16, "align": "center" },
      "format": "<img src='img://gui/maps/icons/achievement/32x32/mainGun.png' width='32' height='32' align='middle' vspace='-9'><b>{{py:xvm.hp_panel.high_сaliber()}}</b>"
    }
  }
}