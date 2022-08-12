// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:device_preview_demo/app_home.dart';
import 'package:device_preview_demo/screen_modes/set_custom_android_devices.dart';

import 'package:device_preview_demo/themes/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:screenshot_modes/screenshot_modes.dart';

final playStoreScreenShotModesPlugin = ScreenShotModesPlugin(
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
    function: _setToSamsungA50,
    label: "samsungA20",
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToSamsungNote20,
    label: "samsungNote20",
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToSamsungNote20Ultra,
    label: "samsugnNote20Ultra",
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToSamsungS20,
    label: "samsungS20",
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToSonyXperia1II,
    label: "sonyXperia1II",
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: _setToOnePlus8,
    label: "oneNotePlus8",
    modes: _setLandscapePortrait,
  ),
  ItemScreenMode(
    function: (context) async {
      final store = DevicePreviewHelper.getDevicePreviewStore(context);
      //store.enableCustomDevice();
      //store.updateCustomDevice(SetCustomDevices.samsungS22);
      //store.deviceInfo.canRotate;
    },
    label: "samsungS22",
    modes: _setLandscapePortraitSamsungS22,
  ),
  ItemScreenMode(
    function: (context) async {
      final store = DevicePreviewHelper.getDevicePreviewStore(context);
      //store.enableCustomDevice();
      //store.updateCustomDevice(SetCustomDevices.samsungTab7);
      //store.deviceInfo.canRotate;
    },
    label: "samsungTab7",
    modes: _setLandscapePortraitSamsungTab7,
  ),
  ItemScreenMode(
    function: (context) async {
      final store = DevicePreviewHelper.getDevicePreviewStore(context);
      //store.enableCustomDevice();
      //store.updateCustomDevice(SetCustomDevices.samsungTab7);
      //store.deviceInfo.canRotate;
    },
    label: "pixel6Pro",
    modes: _setLandscapePortrailPixel6Pro,
  ),
];

final _setLandscapePortrailPixel6Pro = [
  ItemScreenMode(
    function: _pixel8ProPortrait,
    label: "pixel6ProPortrait",
    modes: _setPages,
  ),
  ItemScreenMode(
    function: _pixel8ProLandscape,
    label: "pixel6ProLandscape",
    modes: _setPages,
  ),
];

// ignore: prefer-correct-identifier-length
final _setLandscapePortraitSamsungTab7 = [
  ItemScreenMode(
    function: _setSamsungTab7Portrait,
    label: "samsungTab7Portrait",
    modes: _setPages,
  ),
  ItemScreenMode(
    function: _setSamsungTab7Landscape,
    label: "samsungTab7Landscape",
    modes: _setPages,
  ),
];

final _setLandscapePortraitSamsungS22 = [
  ItemScreenMode(
    function: _setSamsungS22Portrait,
    label: "samsungS22Portrait",
    modes: _setPages,
  ),
  ItemScreenMode(
    function: _setSamsungS22Landscape,
    label: "samsungS22landscape",
    modes: _setPages,
  ),
];

Future<void> _pixel8ProPortrait(BuildContext context) async {
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  store.enableCustomDevice();
  store.updateCustomDevice(SetCustomAndroidDevices.pixel6ProPortrait);
}

Future<void> _pixel8ProLandscape(BuildContext context) async {
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  store.enableCustomDevice();
  store.updateCustomDevice(SetCustomAndroidDevices.pixel6ProLandscape);
}


Future<void> _setSamsungTab7Portrait(BuildContext context) async {
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  store.enableCustomDevice();
  store.updateCustomDevice(SetCustomAndroidDevices.samsungTab7Portrait);
}

Future<void> _setSamsungTab7Landscape(BuildContext context) async {
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  store.enableCustomDevice();
  store.updateCustomDevice(SetCustomAndroidDevices.samsungTab7Landscape);
}

Future<void> _setSamsungS22Portrait(BuildContext context) async {
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  store.enableCustomDevice();
  store.updateCustomDevice(SetCustomAndroidDevices.samsungS22Portrait);
}

Future<void> _setSamsungS22Landscape(BuildContext context) async {
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  store.enableCustomDevice();
  store.updateCustomDevice(SetCustomAndroidDevices.samsungS22Landscape);
}

Future<void> _setToOnePlus8(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.android.onePlus8Pro.identifier,
  );
}

Future<void> _setToSamsungA50(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.android.samsungGalaxyA50.identifier,
  );
}

Future<void> _setToSamsungNote20(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.android.samsungGalaxyNote20.identifier,
  );
}

Future<void> _setToSamsungNote20Ultra(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.android.samsungGalaxyNote20Ultra.identifier,
  );
}

Future<void> _setToSamsungS20(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.android.samsungGalaxyS20.identifier,
  );
}

Future<void> _setToSonyXperia1II(BuildContext context) async {
  DevicePreviewHelper.changeDevice(
    context,
    Devices.android.sonyXperia1II.identifier,
  );
}

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

Future<String> _saveScreenShot(DeviceScreenshotWithLabel screen) async {
  final String name = screen.label.join('/');
  final path = join(
    Directory.current.path,
    'screenshot',
    "playstore"
        '$name.png',
  );
  final imageFile = File(path);
  await imageFile.create(recursive: true);
  await imageFile.writeAsBytes(screen.deviceScreenshot.bytes);

  return '$path saved'; // message printed to device preview plugins windows;
}
