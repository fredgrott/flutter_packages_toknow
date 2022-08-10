// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:device_preview/device_preview.dart';
import 'package:device_preview_demo/app_home.dart';
import 'package:device_preview_demo/screen_modes/app_store_screen_shot_modes_plugin.dart';
import 'package:device_preview_demo/themes/app_theme_data.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: appBrightness == Brightness.dark
          ? appDarkThemeData
          : appLightThemeData,
      child: MaterialApp(
        // for device preview functionality
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: appLightThemeData,
        darkTheme: appDarkThemeData,

        //we do not set themeMode as that is taken care of in device preview settings
        // need to set a navigatorKey that the screenshots plugin will use
        navigatorKey: navigatorKey,
        home: AppHome(),
      ),
    );
  }
}
