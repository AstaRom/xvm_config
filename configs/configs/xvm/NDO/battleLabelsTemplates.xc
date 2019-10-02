{
  "def": {
    "winChances": {
      "enabled": false,
      "updateEvent": "ON_VEHICLE_DESTROYED",
      "x": 0,
      "y": -85,
      "width": 100,
      "height": 20,
      "alpha": 100, 
      "autoSize": "center",
      "align": "center", 
      "valign": "bottom",
      "antiAliasType": "advanced", 
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 }, 
      "currentFieldDefaultStyle": { "color": "0xFCFCFC", "size": 15 },
      "format": "{{xvm-stat?{{chancesStatic}}{{chancesStatic?&nbsp;/&nbsp;|}}{{chancesLive}}}}"
    }
  }
}