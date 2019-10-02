{
  "playersPanel": {
    "alpha": 70,
    "iconAlpha": 100,
    "removeSelectedBackground": true,
    "removePanelsModeSwitcher": false,
    "startMode": "large",
    "altMode": null,
    "clanIcon": {
      "show": true,
      "x": 105,
      "y": 4,
      "xr": 105,
      "yr": 4,
      "w": 16,
      "h": 16,
      "alpha": 100
    },
    "none": {
      "enabled": true,
      "layout": "vertical",
      "extraFields": ${"playersPanelTemplates.xc":"none"}
    },
    "short": {
      "enabled": true,
      "width": 0,
      "removeSquadIcon": false,
      "vehicleLevelAlpha": 100,
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      "extraFieldsLeft": ${"playersPanelTemplates.xc":"shortLeft"},
      "extraFieldsRight": ${"playersPanelTemplates.xc":"shortRight"}
    },
    "medium": {
      "enabled": true,
      "width": 115,
      "removeSquadIcon": false,
      "vehicleLevelAlpha": 100,
      "formatLeft": "",
      "formatRight": "",
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      "extraFieldsLeft": ${"playersPanelTemplates.xc":"mediumLeft"},
      "extraFieldsRight": ${"playersPanelTemplates.xc":"mediumRight"}
    },
    "medium2": {
      "enabled": true,
      "width": 75,
      "removeSquadIcon": false,
      "vehicleLevelAlpha": 100,
      "formatLeft": "",
      "formatRight": "",
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      "extraFieldsLeft": ${"playersPanelTemplates.xc":"medium2Left"},
      "extraFieldsRight": ${"playersPanelTemplates.xc":"medium2Right"}
    },
    "large": {
      "enabled": true,
      "width": "{{xvm-stat?115|205}}",
      "removeSquadIcon": false,
      "vehicleLevelAlpha": 100,
      "nickFormatLeft": "",
      "nickFormatRight": "",
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      "extraFieldsLeft": ${"playersPanelTemplates.xc":"largeLeft"},
      "extraFieldsRight": ${"playersPanelTemplates.xc":"largeRight"}
    }
  }
}