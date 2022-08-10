// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values


import 'package:device_preview_demo/konstants_app.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

const FlexSubThemesData appFlexSubThemeData = FlexSubThemesData(

  // Opt in for themed hover, focus, highlight and splash effects.
  // New buttons use primary themed effects by default, this setting makes
  // the general ThemeData hover, focus, highlight and splash match that.
  // True by default when opting in on sub themes, but you can turn it off.
  interactionEffects: kAppSubThemeInteractionEffects,

  // When it is null = undefined, the sub themes will use their default style
  // behavior that aims to follow new Material 3 (M3) standard for all widget
  // corner radius. Current Flutter SDK corner radius is 4, as defined by
  // the Material 2 design guide. M3 uses much higher corner radius, and it
  // varies by widget type.
  //
  // When you set [defaultRadius] to a value, it will override these defaults
  // with this global default. You can still set and lock each individual
  // border radius back for these widget sub themes to some specific value, or
  // to its Material3 standard, which is mentioned in each theme as the used
  // default when its value is null.
  //
  // Set global corner radius. Default is null, resulting in M3 styles, but make
  // it whatever you like, even 0 for a hip to be square style.
  defaultRadius: kAppSubThemeDefaultRadius,

  // You can also override individual corner radius for each sub-theme to make
  // it different from the global `cornerRadius`. Here eg. the bottom sheet
  // radius is defined to always be 24:
  bottomSheetRadius: kAppSubThemeBottomSheetRadius,

  // Use the Material 3 like text theme. Defaults to true.
  useTextTheme: kAppSubThemeUseTextTheme,

  // Select input decorator type, only SDK options outline and underline
  // supported no, but custom ones may be added later.
  inputDecoratorBorderType: kAppSubThemeInputDecorType,
  // For a primary color tinted background on the input decorator set to true.
  inputDecoratorIsFilled: kAppSubThemeInputDecIsFilled,
  // If you do not want any underline/outline on the input decorator when it is
  // not in focus, then set this to false.
  inputDecoratorUnfocusedHasBorder: kAppSubThemeInputUnfocusHasBorder,
  // Select the ColorScheme color used for input decoration border.
  // Primary is default so no need to set that, used here as placeholder to
  // enable easy selection of other options.
  inputDecoratorSchemeColor: kAppSubThemeInputDecorSchemeColor,

  // If fabUseShape is false, no shape will be added to FAB theme, it will get
  // whatever default shape the widget default behavior applies.
  
  fabUseShape: kAppSubthemeFabUseShape,
  
  // Select the ColorScheme color used by FABs as their base/background color
  // Secondary is default so no need to set that, used here as placeholder to
  // enable easy selection of other options.
  
  fabSchemeColor: kAppSubThemeFabSchemeColor,

  // Select the ColorScheme color used by Chips as their base color
  // Primary is default so no need to set that, used here as placeholder to
  // enable easy selection of other options.
  chipSchemeColor: kAppSubThemeChipSchemeColor,

  // Elevations have easy override values as well.
  elevatedButtonElevation: kAppSubThemeElevatedButtonWElevation,
  // Widgets that use outline borders can be easily adjusted via these
  // properties, they affect the outline input decorator, outlined button and
  // toggle buttons.
  thickBorderWidth: kAppSubThemeThickBorderWidth, // Default is 2.0.
  thinBorderWidth: kAppSubThemeThinBorderWidth, // Default is 1.5.

  // Select the ColorScheme color used for selected TabBar indicator.
  // Defaults to same color as selected tab if not defined.
  // tabBarIndicatorSchemeColor: SchemeColor.secondary,

  // Select the ColorScheme color used for selected bottom navigation bar item.
  // Primary is default so no need to set that, used here as placeholder to
  // enable easy selection of other options.
  bottomNavigationBarSelectedLabelSchemeColor: kAppSubThemeBottomNavSelectLabelSchemeColor,

  // Select the ColorScheme color used for bottom navigation bar background.
  // Background is default so no need to set that, provided here as placeholder
  // to enable easy selection of other options.
  bottomNavigationBarBackgroundSchemeColor: kAppSubThemeNavBackgroundSchemeColor,

  // SchemeColor based color for [NavigationBar]'s selected item icon.
  navigationBarSelectedIconSchemeColor: kAppSubThemeNavSelectedIconSchemeColor,
  
  // SchemeColor based color for [NavigationBar]'s selected item label.
  navigationBarSelectedLabelSchemeColor: kAppSubThemeNavSelectedLabelSchemeColor,

  // SchemeColor based color for [NavigationBar]'s unselected item icons.
  navigationBarUnselectedIconSchemeColor: kAppSubThemeNavUnSelectedIconSchemeColor,

  // SchemeColor based color for [NavigationBar]'s unselected item icons.
  navigationBarUnselectedLabelSchemeColor: kAppSubThemeNavUnSelectedLabelSchemeColor,

  // SchemeColor based color for [NavigationBar]'s selected item highlight.
  navigationBarIndicatorSchemeColor: kAppSubThemeNavIndicatorSchemeColor,

  // If you use suitable M3 designed container color for the indicator, it
  // does not need any opacity.
  // navigationBarIndicatorOpacity: 1,

  // Select the ColorScheme color used for [NavigationBar]'s background.
  navigationBarBackgroundSchemeColor: kAppSubThemeNavBackgroundSchemeColor,

  // When set to true [NavigationBar] unselected icons use a more muted
  // version of color defined by [navigationBarUnselectedIconSchemeColor].
  navigationBarMutedUnselectedIcon: kAppSubThemeNavMutedUnSelectIcon,

  // When set to true [NavigationBar] unselected labels use a more muted
  // version of color defined by [navigationBarUnselectedLabelSchemeColor].
  navigationBarMutedUnselectedLabel: kAppSubThemeNavMutedUnSelectLabel,

  // Set size of labels.
  navigationBarSelectedLabelSize: kAppSubThemeNavSelectLabelSize,
  navigationBarUnselectedLabelSize: kAppSubThemeNavUnSelectLabelSize,
  // Set the size of icons icons.
  navigationBarSelectedIconSize: kAppSubThemeNavSelectIconSize,
  navigationBarUnselectedIconSize: kAppSubThemeNavUnSelectIconSize,





);
