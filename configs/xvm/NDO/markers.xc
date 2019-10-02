{
  "markers": {
    "enabled": true,
    "turretMarkers": {
      "highVulnerability": "*",
      "lowVulnerability": "'"
    },
    "ally": {
      "alive": {
        "normal": {
          "vehicleIcon": ${ "markersAliveTemplates.xc": "def.vehicleIcon" },
          "healthBar": ${ "markersAliveTemplates.xc": "def.healthBar" },
          "damageText": ${ "markersAliveTemplates.xc": "def.damageText" },
          "damageTextPlayer": ${ "markersAliveTemplates.xc": "def.damageTextPlayer" },
          "damageTextSquadman": ${ "markersAliveTemplates.xc": "def.damageTextSquadman" },
          "contourIcon": { "enabled": false },
          "levelIcon": { "enabled": false },
          "actionMarker": ${ "markersAliveTemplates.xc": "def.actionMarker" },
          "stunMarker": ${ "markersAliveTemplates.xc": "def.stunMarker" },
          "textFields": [
            ${ "markersAliveTemplates.xc": "def.vehicleName" },
            ${ "markersAliveTemplates.xc": "def.hp" },
            ${ "markersAliveTemplates.xc": "def.eff_marker" },
            ${ "markersAliveTemplates.xc": "def.squad_marker_fon" },
            ${ "markersAliveTemplates.xc": "def.squad_marker_frame" },
            ${ "markersAliveTemplates.xc": "def.squad_marker_number" },
            ${ "markersAliveTemplates.xc": "def.lowHp_marker" },
            ${ "markersAliveTemplates.xc": "def.xmqp_marker" }
          ]
        },
        "extended": {
          "vehicleIcon": ${ "markersAliveTemplates.xc": "def.vehicleIcon" },
          "healthBar": ${ "markersAliveTemplates.xc": "def.healthBar" },
          "damageText": ${ "markersAliveTemplates.xc": "def.damageText" },
          "damageTextPlayer": ${ "markersAliveTemplates.xc": "def.damageTextPlayer" },
          "damageTextSquadman": ${ "markersAliveTemplates.xc": "def.damageTextSquadman" },
          "contourIcon": { "enabled": false },
          "levelIcon": { "enabled": false },
          "actionMarker": { "enabled": false },
          "stunMarker": { "enabled": false },
          "textFields": [
            ${ "markersAliveTemplates.xc": "def.playerName" },
            ${ "markersAliveTemplates.xc": "def.hp_ratio" },
            ${ "markersAliveTemplates.xc": "def.stat_marker" }
          ]
        }
      },
      "dead": {
        "normal": {
          "vehicleIcon": { "enabled": false },
          "healthBar": { "enabled": false },
          "damageText": ${ "markersDeadTemplates.xc": "def.damageText" },
          "damageTextPlayer": ${ "markersDeadTemplates.xc": "def.damageTextPlayer" },
          "damageTextSquadman": ${ "markersDeadTemplates.xc": "def.damageTextSquadman" },
          "contourIcon": { "enabled": false },
          "levelIcon": { "enabled": false },
          "actionMarker": ${ "markersDeadTemplates.xc": "def.actionMarker" },
          "stunMarker": ${ "markersDeadTemplates.xc": "def.stunMarker" },
          "textFields": []
        },
        "extended": {
          "vehicleIcon": ${ "markersDeadTemplates.xc": "def.vehicleIcon" },
          "healthBar": { "enabled": false },
          "damageText": ${ "markersDeadTemplates.xc": "def.damageText" },
          "damageTextPlayer": ${ "markersDeadTemplates.xc": "def.damageTextPlayer" },
          "damageTextSquadman": ${ "markersDeadTemplates.xc": "def.damageTextSquadman" },
          "contourIcon": { "enabled": false },
          "levelIcon": { "enabled": false },
          "actionMarker": { "enabled": false },
          "stunMarker": { "enabled": false },
          "textFields": [
            ${ "markersDeadTemplates.xc": "def.vehicleName" },
            ${ "markersDeadTemplates.xc": "def.playerName" }
          ]
        }
      }
    },
    "enemy": {
      "alive": {
        "normal": {
          "vehicleIcon": ${ "markersAliveTemplates.xc": "def.vehicleIcon" },
          "healthBar": ${ "markersAliveTemplates.xc": "def.healthBar" },
          "damageText": ${ "markersAliveTemplates.xc": "def.damageText" },
          "damageTextPlayer": ${ "markersAliveTemplates.xc": "def.damageTextPlayer" },
          "damageTextSquadman": ${ "markersAliveTemplates.xc": "def.damageTextSquadman" },
          "contourIcon": { "enabled": false },
          "levelIcon": { "enabled": false },
          "actionMarker": ${ "markersAliveTemplates.xc": "def.actionMarker" },
          "stunMarker": ${ "markersAliveTemplates.xc": "def.stunMarker" },
          "textFields": [
            ${ "markersAliveTemplates.xc": "def.vehicleName" },
            ${ "markersAliveTemplates.xc": "def.hp" },
            ${ "markersAliveTemplates.xc": "def.eff_marker" },
            ${ "markersAliveTemplates.xc": "def.squad_marker_fon" },
            ${ "markersAliveTemplates.xc": "def.squad_marker_frame" },
            ${ "markersAliveTemplates.xc": "def.squad_marker_number" },
            ${ "markersAliveTemplates.xc": "def.lowHp_marker" }
          ]
        },
        "extended": {
          "vehicleIcon": ${ "markersAliveTemplates.xc": "def.vehicleIcon" },
          "healthBar": ${ "markersAliveTemplates.xc": "def.healthBar" },
          "damageText": ${ "markersAliveTemplates.xc": "def.damageText" },
          "damageTextPlayer": ${ "markersAliveTemplates.xc": "def.damageTextPlayer" },
          "damageTextSquadman": ${ "markersAliveTemplates.xc": "def.damageTextSquadman" },
          "contourIcon": { "enabled": false },
          "levelIcon": { "enabled": false },
          "actionMarker": { "enabled": false },
          "stunMarker": { "enabled": false },
          "textFields": [
            ${ "markersAliveTemplates.xc": "def.playerName" },
            ${ "markersAliveTemplates.xc": "def.hp_ratio" },
            ${ "markersAliveTemplates.xc": "def.stat_marker" }
          ]
        }
      },
      "dead": {
        "normal": {
          "vehicleIcon": { "enabled": false },
          "healthBar": { "enabled": false },
          "damageText": ${ "markersDeadTemplates.xc": "def.damageText" },
          "damageTextPlayer": ${ "markersDeadTemplates.xc": "def.damageTextPlayer" },
          "damageTextSquadman": ${ "markersDeadTemplates.xc": "def.damageTextSquadman" },
          "contourIcon": { "enabled": false },
          "levelIcon": { "enabled": false },
          "actionMarker": ${ "markersDeadTemplates.xc": "def.actionMarker" },
          "stunMarker": ${ "markersDeadTemplates.xc": "def.stunMarker" },
          "textFields": []
        },
        "extended": {
          "vehicleIcon": ${ "markersDeadTemplates.xc": "def.vehicleIcon" },
          "healthBar": { "enabled": false },
          "damageText": ${ "markersDeadTemplates.xc": "def.damageText" },
          "damageTextPlayer": ${ "markersDeadTemplates.xc": "def.damageTextPlayer" },
          "damageTextSquadman": ${ "markersDeadTemplates.xc": "def.damageTextSquadman" },
          "contourIcon": { "enabled": false },
          "levelIcon": { "enabled": false },
          "actionMarker": { "enabled": false },
          "stunMarker": { "enabled": false },
          "textFields": [
            ${ "markersDeadTemplates.xc": "def.vehicleName" },
            ${ "markersDeadTemplates.xc": "def.playerName" }
          ]
        }
      }
    }
  }
}