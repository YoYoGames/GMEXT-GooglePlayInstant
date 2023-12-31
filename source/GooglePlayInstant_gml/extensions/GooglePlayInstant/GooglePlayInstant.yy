{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "GooglePlayInstant",
  "androidactivityinject": "",
  "androidclassname": "InstantPlayGames",
  "androidcodeinjection": "\r\n<YYAndroidManifestApplicationAttributes>\r\nandroid:networkSecurityConfig=\"@xml/network_security_config\"\r\n</YYAndroidManifestApplicationAttributes>\r\n\r\n<YYAndroidManifestAttributes>\r\nandroid:targetSandboxVersion=\"2\"\r\nxmlns:dist=\"http://schemas.android.com/apk/distribution\"\r\n</YYAndroidManifestAttributes>\r\n\r\n<YYAndroidManifestApplicationInject>\r\n<meta-data android:name=\"com.google.android.gms.instant.flavor\" android:value=\"1337\"/>\r\n</YYAndroidManifestApplicationInject>\r\n\r\n<YYAndroidManifestManifestInject>\r\n<uses-feature android:glEsVersion=\"0x00020000\" android:required=\"true\" /> \r\n<dist:module dist:instant=\"true\" />\r\n</YYAndroidManifestManifestInject>\r\n\r\n<YYAndroidManifestActivityAttributes>\r\nandroid:visibleToInstantApps=\"true\"\r\n</YYAndroidManifestActivityAttributes>\r\n\r\n\r\n<YYAndroidGradleDependencies>\r\nimplementation \"com.google.android.gms:play-services-instantapps:17.0.0\" \r\n</YYAndroidGradleDependencies>\r\n\r\n",
  "androidinject": "\r\n<meta-data android:name=\"com.google.android.gms.instant.flavor\" android:value=\"1337\"></meta-data>\r\n",
  "androidmanifestinject": "\r\n<uses-feature android:glEsVersion=\"0x00020000\" android:required=\"true\"></uses-feature> \r\n<dist:module dist:instant=\"true\"></dist:module>\r\n",
  "androidPermissions": [
    "android.permission.ACCESS_INSTANT_APP",
    "android.permission.VIEW_INSTANT_APPS",
  ],
  "androidProps": true,
  "androidsourcedir": "",
  "author": "",
  "classname": "",
  "copyToTargets": 8,
  "date": "2022-11-15T00:50:54.3692518+00:00",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "0.0.1",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"InstantPlayGames.ext","constants":[],"copyToTargets":8,"filename":"InstantPlayGames.ext","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"googleplayinstant_is_instant_app","argCount":0,"args":[],"documentation":"","externalName":"googleplayinstant_is_instant_app","help":"googleplayinstant_is_instant_app()","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"googleplayinstant_set_instant_app_cookie","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"googleplayinstant_set_instant_app_cookie","help":"googleplayinstant_set_instant_app_cookie(str)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"googleplayinstant_get_instant_app_cookie_max_size","argCount":0,"args":[],"documentation":"","externalName":"googleplayinstant_get_instant_app_cookie_max_size","help":"googleplayinstant_get_instant_app_cookie_max_size()","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"googleplayinstant_get_instant_app_cookie","argCount":0,"args":[],"documentation":"","externalName":"googleplayinstant_get_instant_app_cookie","help":"googleplayinstant_get_instant_app_cookie()","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"googleplayinstant_get_instant_apps_client","argCount":0,"args":[],"documentation":"","externalName":"googleplayinstant_get_instant_apps_client","help":"googleplayinstant_get_instant_apps_client()","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"googleplayinstant_show_install_prompt","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"googleplayinstant_show_install_prompt","help":"googleplayinstant_show_install_prompt(title,url)","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"googleplayinstant_instant_apps_enabled","argCount":0,"args":[],"documentation":"","externalName":"googleplayinstant_instant_apps_enabled","help":"googleplayinstant_instant_apps_enabled()","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"googleplayinstant_read_instant_app_data","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"googleplayinstant_read_instant_app_data","help":"googleplayinstant_read_instant_app_data(offset, length, buffer_address)","hidden":false,"kind":4,"returnType":2,},
      ],"init":"","kind":4,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "\r\nimplementation \"com.google.android.gms:play-services-instantapps:17.0.0\" \r\n",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": false,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/GooglePlayInstant/Extensions.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": -1,
  "tvosclassname": null,
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": null,
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}