// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:device_preview_demo/app_home.dart';


import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'package:screenshot_modes/screenshot_modes.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// Execution sequence of chained modes:
//

final appStoreScreenShotModesPlugin = ScreenShotModesPlugin(
  processor: _saveScreenShot,
  modes: _lightDark,
);

final _lightDark = [
  ItemScreenMode(
    function: (context) async {
      await setModeTo(
        context,
        ThemeMode.light,
      );
    },
    label: "_light_theme",
    modes: _devices,
  ),
  ItemScreenMode(
    function: (context) async {
      await setModeTo(
        context,
        ThemeMode.dark,
      );
    },
    label: "_dark_theme",
    modes: _devices,
  ),
];

final _devices = [
  ItemScreenMode(
    function: _setToIPad,
    label: "iPad",
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPadAir4,
    label: 'iPadAir4',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPadPro11Inches,
    label: 'iPadPro11Inches',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPadPro12InchesGen2,
    label: 'iPadPro12InchesGen2',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPadPro12InchesGen4,
    label: 'iPadPro12InchesGen4',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPhone12,
    label: 'iPhone12',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPhone12Mini,
    label: 'iPhone12Mini',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPhone12ProMax,
    label: 'iPhone12ProMax',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPhone13,
    label: 'iPhone13',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPhone13Mini,
    label: 'iPhone13Mini',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPhone13ProMax,
    label: 'iPhone13ProMax',
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToIPhoneSE,
    label: 'iPhoneSE',
    modes: _setLandscapePortrait,
  ),
];

final _setLandscapePortrait = [
  ItemScreenMode(
    function: _setLandscape,
    label: "landscape",
    modes: _setPages,
  ),
  ItemScreenMode(
    function: _setPortrait,
    label: "portrait",
    modes: _setPages,
  ),
];

final _setPages = [
  const ItemScreenMode(
    function: pushComponentScreen,
    label: 'ComponentScreen',
  ),
  const ItemScreenMode(
    function: pushColorPalettesScreen,
    label: 'ColorPalettesScreen',
  ),
  const ItemScreenMode(
    function: pushTypographyScreen,
    label: 'TypographyScreen',
  ),
  const ItemScreenMode(
    function: pushElevationScreen,
    label: 'ElevationScreen',
  ),
];

Future<void> _setPortrait(BuildContext context) async {
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  if (store.data.orientation == Orientation.landscape) {
    store.rotate();
  }
}

Future<void> _setLandscape(BuildContext context) async {
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  if (store.data.orientation == Orientation.portrait) {
    store.rotate();
  }
}

Future<void> _setToIPad(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPad.identifier,
  );
}

Future<void> _setToIPadAir4(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPadAir4.identifier,
  );
}

Future<void> _setToIPadPro11Inches(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPadPro11Inches.identifier,
  );
}

Future<void> _setToIPadPro12InchesGen2(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPad12InchesGen2.identifier,
  );
}

Future<void> _setToIPadPro12InchesGen4(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPad12InchesGen4.identifier,
  );
}

Future<void> _setToIPhone12(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPhone12.identifier,
  );
}

Future<void> _setToIPhone12Mini(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPhone12Mini.identifier,
  );
}

Future<void> _setToIPhone12ProMax(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPhone12ProMax.identifier,
  );
}

Future<void> _setToIPhone13(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPhone13.identifier,
  );
}

Future<void> _setToIPhone13Mini(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPhone13Mini.identifier,
  );
}

Future<void> _setToIPhone13ProMax(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPhone13ProMax.identifier,
  );
}

Future<void> _setToIPhoneSE(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.ios.iPhoneSE.identifier,
  );
}

Future<void> setModeTo(
  BuildContext context,
  ThemeMode mode,
) async {
  // the rebuild is triggered via the brightnss notifier at root of MaterialApp
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  if (store.data.isDarkMode == false && mode == ThemeMode.dark) {
    store.toggleDarkMode();
  }
  if (store.data.isDarkMode && mode == ThemeMode.light) {
    store.toggleDarkMode();
  }
}

Future<void> pushComponentScreen(BuildContext context) async {
  screenIndex = 0;

  Navigator.of(navigatorKey.currentContext!).push<dynamic>(
    DirectPageRouteBuilder(
      builder: (_) => AppHome(),
    ),
  );
}

Future<void> pushColorPalettesScreen(BuildContext context) async {
  screenIndex = 1;

  Navigator.of(navigatorKey.currentContext!).push<dynamic>(
    DirectPageRouteBuilder(builder: (_) => AppHome()),
  );
}

Future<void> pushTypographyScreen(BuildContext context) async {
  screenIndex = 2;
  // we could get data from server;

  Navigator.of(navigatorKey.currentContext!).push<dynamic>(
    DirectPageRouteBuilder(
      builder: (_) => AppHome(),
    ),
  );
}

Future<void> pushElevationScreen(BuildContext context) async {
  screenIndex = 3;
  // we could get data from server;

  Navigator.of(navigatorKey.currentContext!).push<dynamic>(
    DirectPageRouteBuilder(builder: (_) => AppHome()),
  );
}

Future<String> _saveScreenShot(DeviceScreenshotWithLabel screen) async {
  final String name = screen.label.join('/');
  final path = join(
    Directory.current.path,
    'screenshot',
    "appstore"
        '$name.png',
  );
  final imageFile = File(path);
  await imageFile.create(recursive: true);
  await imageFile.writeAsBytes(screen.deviceScreenshot.bytes);

  return '$path saved'; // message printed to device preview plugins windows;
}
