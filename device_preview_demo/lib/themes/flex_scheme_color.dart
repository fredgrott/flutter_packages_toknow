// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:device_preview_demo/konstants_app.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

final FlexSchemeColor appLightScheme = FlexSchemeColor.from(
  primary: kAppFCSLightPrimary,
  primaryContainer: kAppFCSLightPrimaryContainer,
  secondary: kAppFCSLightSecondary,
  secondaryContainer: kAppFCSLightSecondaryContainer,
  tertiary: kAppFCSLightTertiary,
  tertiaryContainer: kAppFCSLightTertieryContainer,

  brightness: Brightness.light,

  // The built in schemes use their tertiary color as their default
  // custom app bar color, but it can be any color. We use a custom color
  // here. We will see this in example 5 when using the theme and selecting
  // the custom app bar style. We use a light blue that matches branded
  // surface colors, but is a bit stronger than most surface branding.
  appBarColor: kAppFCSLightAppbarBackground,
);

final FlexSchemeColor appDarkScheme = FlexSchemeColor.from(
  
  primary: kAppFCSDarkPrimary,
  primaryContainer: kAppFCSDarkPrimaryContainer,
  secondary: kAppFCSDarkSecondary,
  secondaryContainer: kAppFCSDarkSecondaryContainer,
  tertiary: kAppFCSDarkTertiary,
  tertiaryContainer: kAppFCSDarkTertiaryContainer,
  // A custom very dark blue, to match the dark theme mode
  appBarColor: kAppFCSDarkAppbarBackground,

  brightness: Brightness.dark,
  );
