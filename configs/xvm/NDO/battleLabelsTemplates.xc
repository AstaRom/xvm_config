{
  "def": {
    "hitlog": {
      "enabled": true,
      "updateEvent": "ON_DAMAGE_CAUSED",
      "x": 5,
      "y": 425,
      "width": 500,
      "height": 1000,
      "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 75, "blur": 2, "strength": 1 },
      "textFormat": { "font": "$FieldFont", "size": 15, "color": "0xFCFCFC", "align": "left", "leading": 5 },
      "format": "{{hitlog-header}}\n{{hitlog-body}}"
    },
    "damage_log": {
      "enabled": ${"@settings.xc":"settings.battleLabels.damageLog.damage_log"},
      "updateEvent": "PY(ON_HIT)",
      "x": 235,
      "y": -15,
      "width": 220,
      "height": 220,
      "screenVAlign": "bottom",
      "shadow": {
        "distance": "{{py:xvm.damageLog.dLog_shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.dLog_shadow('angle')}}",
        "color": "{{py:xvm.damageLog.dLog_shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.dLog_shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.dLog_shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.dLog_shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.dLog_shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.dLog_shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.dLog_shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.dLog_shadow('quality')}}"
      },
      "textFormat": { "font": "$UniversCondC", "size": 18, "color": "0xE2E2E2", "align": "left", "valign": "top" },
      "format": "{{py:xvm.damageLog.dLog}}"
    },
    "last_hit": {
      "enabled": ${"@settings.xc":"settings.battleLabels.damageLog.last_hit"},
      "updateEvent": "PY(ON_LAST_HIT)",
      "x": 0,
      "y": -120,
      "width": 180,
      "height": 75,
      "screenHAlign": "center",
      "screenVAlign": "bottom",
      "shadow": {
        "distance": "{{py:xvm.damageLog.lastHit_shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.lastHit_shadow('angle')}}",
        "color": "{{py:xvm.damageLog.lastHit_shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.lastHit_shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.lastHit_shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.lastHit_shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.lastHit_shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.lastHit_shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.lastHit_shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.lastHit_shadow('quality')}}"
      },
      "textFormat": { "font": "$UniversCondC", "size": 25, "color": "0xE2E2E2", "align": "center", "valign": "center" },
      "format": "{{py:xvm.damageLog.lastHit}}"
    },
    "total_efficiency": {
      "enabled": ${"@settings.xc":"settings.battleLabels.damageLog.total_efficiency"},
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
      "x": 235,
      "y": -232,
      "width": 80,
      "height": 40,
      "screenVAlign": "bottom",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 3 },
      "textFormat": { "font": "$UniversCondC", "size": 14, "color": "0xE2E2E2" },
      "format": "<img src='img://gui/maps/icons/library/ClanBattleResultIcon-1.png' vspace='-3'>{{py:total_blocked}}<br/><img src='img://gui/maps/icons/library/BattleResultIcon-1.png' vspace='-3'>{{py:total_assist}}"
    },
    "info_panel_bg": {
      "enabled": ${"@settings.xc":"settings.battleLabels.info_panel"},
      "hotKeyCode": 56,
      "onHold": true,
      "visibleOnHotKey": true,
      "x": 0,
      "y": -75,
      "width": 320,
      "height": 70,
      "alpha": 45,
      "align": "center",
      "valign": "center",
      "screenHAlign": "center",
      "screenVAlign": "bottom",
      "bgColor": "0x000000",
      "borderColor": "0xB2B2B2",
      "shadow": { "enabled": false }
    },
    "info_panel": {
      "enabled": ${"@settings.xc":"settings.battleLabels.info_panel"},
      "updateEvent": "ON_TARGET_IN, ON_TARGET_OUT",
      "hotKeyCode": 56,
      "onHold": true,
      "visibleOnHotKey": true,
      "x": 0,
      "y": -75,
      "width": 320,
      "height": 70,
      "alpha": 100,
      "align": "center",
      "valign": "center",
      "screenHAlign": "center",
      "screenVAlign": "bottom",
      "antiAliasType": "advanced",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 2 }, 
      "textFormat": { "font": "$FieldFont", "size": 15, "color": "0xFCFCFC", "align": "left", "leading": -14 },
      "format": "<textformat tabstops='[5,150,214]'><font size='0'>.</font><tab><font color='#FF9900'>{{py:vehicle_name}}</font><tab>КД:<tab>{{py:gun_reload_equip}} сек</textformat>
      <br/><textformat tabstops='[5,54,150,214,246,279]'><font size='0'>.</font><tab>Обзор:<tab>{{py:vision_radius}} м<tab>Тип:<tab>{{py:shell_type_1}}<tab>{{py:shell_type_2}}<tab>{{py:shell_type_3}}</textformat>
      <br/><textformat tabstops='[5,54,80,105,150,214,246,279]'><font size='0'>.</font><tab>Башня:<tab>{{py:armor_turret_front}}<tab>{{py:armor_turret_side}}<tab>{{py:armor_turret_back}}<tab>Урон:<tab>{{py:shell_damage_1}}<tab>{{py:shell_damage_2}}<tab>{{py:shell_damage_3}}</textformat>
      <br/><textformat tabstops='[5,54,80,105,150,214,246,279]'><font size='0'>.</font><tab>Корпус:<tab>{{py:armor_hull_front}}<tab>{{py:armor_hull_side}}<tab>{{py:armor_hull_back}}<tab>Пробитие:<tab>{{py:shell_power_1}}<tab>{{py:shell_power_2}}<tab>{{py:shell_power_3}}</textformat>"
    },
    "total_hp_teams": {
      "enabled": ${"@settings.xc":"settings.battleLabels.total_hp_panel"},
      "updateEvent": "ON_PLAYERS_HP_CHANGED",
      "x": 0,
      "y": 30,
      "width": 150,
      "height": 24,
      "alpha": 100,
      "align": "center",
      "screenHAlign": "center",
      "antiAliasType": "advanced",
      "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 50, "blur": 4, "strength": 1.5 },
      "textFormat": { "size": 16, "color": "0xFCFCFC", "align": "center" },
      "format": "<font color='#{{py:color_sign_hp}}'><b>{{py:current_hp(0)}} {{py:sign_hp}} {{py:current_hp(1)}}</b></font>"
    }
  }
}