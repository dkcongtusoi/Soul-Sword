{
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":true,"xview":0,"yview":0,"wview":3840,"hview":2160,"xport":0,"yport":0,"wport":3840,"hport":2160,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_heathaze","properties":[
        {"type":0,"name":"g_Distort1Speed","value":"0.022",},
        {"type":0,"name":"g_Distort2Speed","value":"0.025",},
        {"type":0,"name":"g_Distort1Scale","value":"4",},
        {"type":0,"name":"g_Distort1Scale","value":"1.3",},
        {"type":0,"name":"g_Distort2Scale","value":"3",},
        {"type":0,"name":"g_Distort2Scale","value":"3.3",},
        {"type":0,"name":"g_Distort1Amount","value":"2",},
        {"type":0,"name":"g_Distort2Amount","value":"2",},
        {"type":0,"name":"g_ChromaSpreadAmount","value":"0.5",},
        {"type":0,"name":"g_CamOffsetScale","value":"0",},
        {"type":2,"name":"g_DistortTexture","value":"_filter_heathaze_noise_sprite",},
      ],"resourceVersion":"1.0","name":"Effect_2","tags":[],"resourceType":"GMREffectLayer",},
    {"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_whitenoise","properties":[
        {"type":0,"name":"g_WhiteNoiseIntensity","value":"0.2",},
        {"type":0,"name":"g_WhiteNoiseAnimation","value":"0.025",},
        {"type":2,"name":"g_WhiteNoiseTexture","value":"_filter_whitenoise_noise",},
      ],"resourceVersion":"1.0","name":"Effect_1","tags":[],"resourceType":"GMREffectLayer",},
    {"instances":[
        {"properties":[],"isDnd":false,"objectId":{"name":"obj_BG","path":"objects/obj_BG/obj_BG.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":0.0,"y":0.0,"resourceVersion":"1.0","name":"inst_6E6C147B","tags":[],"resourceType":"GMRInstance",},
      ],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Instances","tags":[],"resourceType":"GMRInstanceLayer",},
    {"spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],"resourceVersion":"1.0","name":"Background","tags":[],"resourceType":"GMRBackgroundLayer",},
  ],
  "inheritLayers": false,
  "creationCodeFile": "${project_dir}/rooms/Level0/RoomCreationCode.gml",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_6E6C147B","path":"rooms/Level0/Level0.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 3840,
    "Height": 2160,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "resourceVersion": "1.0",
  "name": "Level0",
  "tags": [],
  "resourceType": "GMRoom",
}