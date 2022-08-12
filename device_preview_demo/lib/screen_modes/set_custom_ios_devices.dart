// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class SetCustomIosDevices {
  static const CustomDeviceInfoData iphone11ProMaxPortrait =
      CustomDeviceInfoData(
    id: "iphone11ProMaxPortrait",
    type: DeviceType.phone,
    platform: TargetPlatform.iOS,
    name: "iphone11ProMaxPortrait",
    safeAreas: EdgeInsets.only(
      left: 0.0,
      top: 44.0,
      right: 0.0,
      bottom: 34.0,
    ),
    pixelRatio: 3,
    screenSize: Size(
      375.0,
      812.0,
    ),
  );

  // ignore: member-ordering-extended
  static const CustomDeviceInfoData iphone11ProMaxLandscape =
      CustomDeviceInfoData(
    id: "iphone11ProMaxLandscape",
    type: DeviceType.phone,
    platform: TargetPlatform.iOS,
    name: "iphone11ProMaxLandscape",
    safeAreas: EdgeInsets.only(
      left: 44.0,
      top: 0.0,
      right: 34.0,
      bottom: 0.0,
    ),
    pixelRatio: 3,
    screenSize: Size(
      812.0,
      375.0,
    ),
  );

  static const CustomDeviceInfoData iphone8PlusPortrait = CustomDeviceInfoData(
    id: "iphone8PlusPortrait",
    type: DeviceType.phone,
    platform: TargetPlatform.iOS,
    name: "iphone8PlusPortrait",
    safeAreas: EdgeInsets.only(
      left: 0.0,
      top: 44.0,
      right: 0.0,
      bottom: 34.0,
    ),
    pixelRatio: 3.0,
    screenSize: Size(
      414.0,
      736.0,
    ),
  );
  // ignore: member-ordering-extended
  static const CustomDeviceInfoData iphone8PlusLandscape = CustomDeviceInfoData(
    id: "iphone8PlusLandscape",
    type: DeviceType.phone,
    platform: TargetPlatform.iOS,
    name: "iphone8PlusLandscape",
    safeAreas: EdgeInsets.only(
      left: 44.0,
      top: 0.0,
      right:34.0,
      bottom: 0.0,
    ),
    pixelRatio: 3.0,
    screenSize: Size(
      736.0,
      414.0,
    ),
  );
}
