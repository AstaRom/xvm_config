{
  "hangar": {
    "xwnInCompany": false,
		"enableGoldLocker": true,
		"enableFreeXpLocker": true,
		"defaultBoughtForCredits": true,
		"hidePricesInTechTree": true,
    "masteryMarkInTechTree": true,
		"allowExchangeXPInTechTree": true,
		"enableCrewAutoReturn": true,
		"crewReturnByDefault": false,
		"barracksShowFlags": true,
    "barracksShowSkills": true,
		"enableEquipAutoReturn": false,
		"blockVehicleIfLowAmmo": true,
		"lowAmmoPercentage": 20,
    "widgetsEnabled": false,
    "pingServers": {
      "enabled": true,
      "updateInterval": 5000,
      "x": 5,
      "y": 50,
      "hAlign": "left",
      "vAlign": "top",
      "alpha": 100,
      "delimiter": ": ",
      "maxRows": 2,
      "columnGap": 10,
      "leading": 0,
      "topmost": true,
      "showTitle": false,
      "showServerName": true,
      "minimalLength": 0,
      "errorString": "--",
      "fontStyle": {
        "name": "$FieldFont",
        "size": 13,
        "bold": true,
        "italic": false,
        "color": {
          "great": "0x00CC00",
          "good": "0xFFCC00",
          "poor": "0xEE6600",
          "bad": "0xAAAAAA"
        },
				"markCurrentServer": "bold",
        "serverColor": ""
      },
      "threshold": {
        "great": 35,
        "good": 60,
        "poor": 100
      },
      "shadow": {
        "enabled": true,
        "color": "0x000000",
        "distance": 0,
        "angle": 45,
        "alpha": 70,
        "blur": 4,
        "strength": 2
      }
    },
    "onlineServers": {
      "enabled": false,
      "x": 5,
      "y": 50,
      "hAlign": "left",
      "vAlign": "top",
      "alpha": 100,
      "delimiter": ": ",
      "maxRows": 2,
      "columnGap": 10,
      "leading": 0,
      "topmost": true,
      "showTitle": false,
      "showServerName": true,
      "minimalLength": 0,
      "errorString": "--k",
      "fontStyle": {
        "name": "$FieldFont",
        "size": 13,
        "bold": true,
        "italic": false,
        "color": {
          "great": "0x00CC00",
          "good": "0xFFCC00",
          "poor": "0xEE6600",
          "bad": "0xAAAAAA"
        },
				"markCurrentServer": "bold",
        "serverColor": ""
      },
      "threshold": {
        "great": 30000,
        "good": 10000,
        "poor": 3000
      },
      "shadow": {
        "enabled": true,
        "color": "0x000000",
        "distance": 0,
        "angle": 45,
        "alpha": 70,
        "blur": 4,
        "strength": 2
      }
    },
    "serverInfo": {
      "enabled": true,
      "alpha": 100,
      "rotation": 0,
      "shiftY": 0
    },
    "carousel": ${"hangar/carousel.xc":"carousel"},
    "clock": ${"hangar/clock.xc":"clock"}
  }
}