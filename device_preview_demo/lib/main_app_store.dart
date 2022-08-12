// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




// ignore_for_file: avoid_redundant_argument_values

import 'package:device_preview/device_preview.dart';
import 'package:device_preview_demo/my_app.dart';

import 'package:device_preview_demo/screen_modes/app_store_screen_shot_modes_plugin.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
      tools: [
        ...DevicePreview.defaultTools,
        appStoreScreenShotModesPlugin,
      ],
      defaultDevice: Devices.ios.iPhone12ProMax,
      storage: DevicePreviewStorage.none(),
      

    ),
  );
}
