// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gist: Custom Devices does not exactly fully plug into
//       DeviceInfo for rotating so we do this way instead.
//       We make one for landscape and one for portrait
//       and point to that specific one.

// ignore_for_file: avoid_redundant_argument_values

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class SetCustomAndroidDevices {
  static const CustomDeviceInfoData samsungS22Portrait = CustomDeviceInfoData(
    id: "samsungS22Portrait",
    type: DeviceType.phone,
    platform: TargetPlatform.android,
    name: "samsungS22Portrait",
    safeAreas: EdgeInsets.only(
      left: 0.0,
      top: 32.0,
      right: 0.0,
      bottom: 32.0,
    ),
    pixelRatio: 3.0,
    screenSize: Size(
      360.0,
      780.0,
    ),
  );
  // ignore: member-ordering-extended
  static const CustomDeviceInfoData samsungS22Landscape = CustomDeviceInfoData(
    id: "samsungS22Landscape",
    type: DeviceType.phone,
    platform: TargetPlatform.android,
    name: "samsungS22Landscape",
    safeAreas: EdgeInsets.only(
      left: 32.0,
      top: 24.0,
      right: 32.0,
      bottom: 0.0,
    ),
    pixelRatio: 3.0,
    screenSize: Size(
      780.0,
      360.0,
    ),
  );
  // ignore: member-ordering-extended
  static const CustomDeviceInfoData pixel6ProPortrait = CustomDeviceInfoData(
    id: "pixel6ProPortrait",
    type: DeviceType.phone,
    platform: TargetPlatform.android,
    name: "pixel6ProPortrait",
    safeAreas: EdgeInsets.only(
      left: 0.0,
      top: 32.0,
      right: 0.0,
      bottom: 32.0,
    ),
    pixelRatio: 4,
    screenSize: Size(
      360.0,
      780.0,
    ),
  );
  // ignore: member-ordering-extended
  static const CustomDeviceInfoData pixel6ProLandscape = CustomDeviceInfoData(
    id: "pixel6ProLandscape",
    type: DeviceType.phone,
    platform: TargetPlatform.android,
    name: "pixel6ProLandscape",
    safeAreas: EdgeInsets.only(
      left: 32.0,
      top: 24.0,
      right: 32.0,
      bottom: 0.0,
    ),
    pixelRatio: 4,
    screenSize: Size(
      780.0,
      360.0,
    ),
  );

  static const CustomDeviceInfoData samsungTab7Portrait = CustomDeviceInfoData(
    id: "samsungTab7Portrail",
    type: DeviceType.tablet,
    platform: TargetPlatform.android,
    name: "samsugnTab7Portrait",
    safeAreas: EdgeInsets.zero,
    pixelRatio: 3,
    screenSize: Size(
      800,
      1280,
    ),
  );
  // ignore: member-ordering-extended
  static const CustomDeviceInfoData samsungTab7Landscape = CustomDeviceInfoData(
    id: "samsungTab7Landscape",
    type: DeviceType.tablet,
    platform: TargetPlatform.android,
    name: "samsungTab7Landscape",
    safeAreas: EdgeInsets.zero,
    pixelRatio: 3,
    screenSize: Size(
      1280,
      800,
    ),
  );
}
