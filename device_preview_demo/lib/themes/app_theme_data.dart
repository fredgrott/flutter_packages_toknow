// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values


import 'package:device_preview_demo/konstants_app.dart';
import 'package:device_preview_demo/themes/flex_key_colors.dart';
import 'package:device_preview_demo/themes/flex_scheme_color.dart';
import 'package:device_preview_demo/themes/flex_sub_themes_data.dart';
import 'package:device_preview_demo/themes/text_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final Brightness appBrightness = SchedulerBinding.instance.window.platformBrightness;

late bool appIsDarkMode;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final ThemeData appLightThemeData = FlexColorScheme.light(
  useMaterial3: kAppFCSUseMaterial3,
  colors: appLightScheme,

  // only used to specify a FlexColorScheme default scheme
  //scheme: ,

  // on dark swaps primary and secondary
  swapColors: kAppFCSSwapColors,

  // The `usedColors` is a convenience property that allows you to vary which
  // colors to use of the primary, secondary and variant colors included in
  // `colors` in `FlexSchemeColor`, or the `FlexSchemeColor` the enum based
  // selection specifies. The integer number corresponds to using:
  //
  // * 1 = Only the primary color
  // * 2 = Primary & Secondary colors
  // * 3 = Primary + container & Secondary colors
  // * 4 = Primary + container & Secondary + container
  // * 5 = Primary + container & Secondary + container & tertiary colors
  // * 6 = Primary + container & Secondary + container & tertiary + container
  //
  // This can be a quick way to try what you theme looks like when using less
  // source colors and just different shades of the same color, that are still
  // correctly tuned for their ColorScheme color values.
  //
  // The values default to 6, so that any color values that are defined are always
  // used as defined and given.
  usedColors: kAppFCSUsedColors,
  
  // For an optional white look set lightIsWhite to true.
  // This is the counterpart to darkIsTrueBlack mode in dark theme mode,
  // which is much more useful than this feature.
  lightIsWhite: kAppFCSLightIsWihite,

  // If you want to use an existing fully specified `ColorScheme` that
  // your designer or you yourself made, you can do so too. This is
  // useful e.g. if you want the use FlexColorScheme for its component
  // sub-theming with an existing `ColorScheme`. To use a`ColorScheme`
  // object as color sources for your `FlexColorscheme` just pass it to
  // the `colorScheme` property. The `surfaceMode` and `blendLevel` will
  // still adjust surface and background colors on surfaces in passed
  // `ColorScheme` if they are used. This can be demonstrated here with
  // the default Flutter M2 based light ColorScheme set, if uncommented
  // below.
  // Note that to do dynamic_color in the colorscheme builder at top of
  //  appwidget would do theme: appLightFlexThemeDat.copyWith(colorSchmee: dynamic_colorLightColorScheme)
  // colorScheme: const ColorScheme.light(),

  // If you provide a color value to a direct color property, the color
  // value will override anything specified via the other properties.
  // The order from lowest to highest color property priority, to
  // determine effective colors are:
  // 1. scheme 2. colors 3. colorScheme 4. individual color values.
  // Normally you would make a custom scheme using the colors property,
  // but if you want to override just one or two colors in a pre-existing
  // scheme, this can be handy way to do it.
  // Uncomment a color property below on the light theme to try it:

  // primary: FlexColor.indigo.light.primary,
  // primaryContainer: FlexColor.greenLightPrimaryContainer,
  // secondary: FlexColor.indigo.light.secondary,
  // secondaryContainer: FlexColor.indigo.light.secondaryContainer,
  // surface: FlexColor.lightSurface,
  // background: FlexColor.lightBackground,
  // error: FlexColor.materialLightErrorHc,
  // scaffoldBackground: FlexColor.lightScaffoldBackground,
  // dialogBackground: FlexColor.lightSurface,
  // appBarBackground: FlexColor.barossaLightPrimary,

  // The default style of AppBar in Flutter SDK light mode uses scheme
  // primary color as its background color. The appBarStyle
  // FlexAppBarStyle.primary, results in this too, and is the default in
  // light mode. You can also choose other themed styles. Like
  // FlexAppBarStyle.background, that gets active color blend from used
  // surfaceMode or surfaceStyle, depending on which one is being used.
  // You may often want a different style on the app bar in dark and
  // light theme mode, therefore it was not set via a shared value
  // above in this template.
  appBarStyle: kAppFCSAppbarStyle,

  appBarElevation: kAppFCSAppbarElevation,
  appBarOpacity: kAppFCSAppbarOpacity,

  // If true, the top part of the Android AppBar has no scrim, it then becomes
  // one colored like on iOS.
  transparentStatusBar: kAppFCSStatusTransparent,

  // Usually the TabBar is used in an AppBar. This style themes it right for
// that, regardless of what FlexAppBarStyle you use for the `appBarStyle`.
// If you will use the TabBar on Scaffold or other background colors, then
// use the style FlexTabBarStyle.forBackground.
  tabBarStyle: kAppFCSTabbarStyle,

  // The `surfaceMode` takes `FlexSurfaceMode` that is used to select the used
  // strategy for blending primary color into different surface colors.
  surfaceMode: kAppFCSFlexSurfaceMode,
  // The alpha blend level strength can be defined separately from the
  // SurfaceMode strategy, and has 40 alpha blend level strengths.
  blendLevel: kAppFCSBlendLevel,

  // If true, tooltip background brightness is same as background brightness.
  // False by default, which is inverted background brightness compared to theme.
  // Setting this to true is more Windows desktop like.
  tooltipsMatchBackground: kAppFCSTooltipsMatchBackground,

  // The visual density setting defaults to same as SDK default value,
// which is `VisualDensity.adaptivePlatformDensity`. You can define a fixed one
// or try `FlexColorScheme.comfortablePlatformDensity`.
// The `comfortablePlatformDensity` is an alternative adaptive density to the
// default `adaptivePlatformDensity`. It makes the density `comfortable` on
// desktops, instead of `compact` as the `adaptivePlatformDensity` does.
// This is useful on desktop with touch screens, since it keeps tap targets
// a bit larger but not as large as `standard` intended for phones and tablets.
  visualDensity: kAppFCSVisualDensity,

  // You can try another font too.
  // Prefer using fully defined TextThemes when using fonts, rather than
  // just setting the fontFamily name, even with GoogleFonts. For
  // quick tests this is fine if the same font style is good
  // as is for all the styles in the TextTheme, then just the fontFamily
  // works well too.
  //fontFamily: _fontFamily,

  textTheme: lightTextTheme,
  primaryTextTheme: lightTextTheme,
  keyColors: appFlexKeyColors,

  // New in version 5: Custom configuration for seed color calculations.
  //
  // Not only does FlexColorScheme enable using more than one seed color, you
  // can also completely customize the tone mapping and CAM16 chroma limits
  // imposed on used seed generation algorithm.
  //
  // When using Material 3 design and key colors, it generates 6 different tonal
  // palettes `TonalPalette` for the colors in a M3 ColorScheme:
  //
  // * Primary tonal palette
  // * Secondary tonal palette
  // * Tertiary tonal palette
  // * Error tonal palette
  // * Neutral tonal palette
  // * Neutral variant tonal palette
  //
  // Each palette contains 13 colors starting from black and ending in white, with
  // different "tones" in-between of the color used for the palette.
  // ColorScheme.from generates all the palettes from a single input color, and
  // a hard coded value for the error palettes. FlexColorScheme allows you to as
  // seen also specify the input colors for secondary and tertiary tonal palette.
  // The neutral palettes are also generated from the input primary color, but
  // with very little chroma of it left it, a bit more in the variant palette.
  // this is a bit like the surface alpha blend that FlexColorScheme has
  // been using since its first version.
  //
  // The algorithm used by ColorScheme.from also lock chroma for secondary and
  // tertiary to a given value, and primary is min 48, after tha it uses
  // chroma from the provided color. When tonal palettes have been created, it
  // uses fixed tones (indexes) from relevant tonal palette and assigns them
  // to given color properties in the ColorScheme. It is also worth noticing
  // to you should use the same key color for both dark and light theme mode.
  // the algorithm uses the same tonal palette for light and dark modes, but
  // different tones from same palette.
  //
  // FlexColorScheme opens up this algorithm and logic and enables you to
  // modify the color seed logic and behavior. The used algorithm is really
  // fascinating, and the M3 usage of it is fine too. But maybe you want to it
  // produce colors that are even more earthy and softer than M3, that is pretty
  // soft already. Maybe your want more vivid tones, more in classic M2 style, or
  // perhaps you need to seed schemes with much higher contrast for accessibility
  // reasons. With FlexColorScheme you can. You do this by making a custom
  // FlexTones data class to configure how the seeding engine maps palette colors
  // the ColorScheme and how it uses chroma values in the key colors.
  //
  // The `FlexTones` has a `FlexTones.light` and `FlexTones.dark` factory, that
  // are used for respective theme mode when using key colors in FlexColorScheme
  // by default.
  //
  // The `FlexTones.light` factory by default provides the same chroma limits and
  // tone mappings as used by:
  // `ColorScheme.fromSeed(seedColor: color, brightness: Brightness.light)`
  //
  // Likewise the `FlexTones.dark` corresponds to same chroma limits and tone
  // mappings as used by:
  // `ColorScheme.fromSeed(seedColor: color, brightness: Brightness.dark)`.
  //
  // However, with the factories you can customize which tone each ColorScheme
  // color properties uses as its color from its corresponding tonal palette.
  // You can also change if primary, secondary and tertiary colors use the
  // chroma in their key color value, if it should have a at least a given
  // minimum chroma value, and after that use the key color's chroma value,
  // or if it should be locked to a given chroma value.
  //
  // There is also a static that returns a default FlexTones.light and
  // FlexTones.dark, when you pass it a brightness, called FlexTones.material,
  // to indicate that it is using the default Material 3 specification.
  //
  // There are few more pre-made static configurations:
  //
  // * FlexTones.soft
  // * FlexTones.vivid
  // * FlexTones.highContrast
  //
  // You can swap in them in below to try slightly different styles on generated
  // seeded ColorScheme. The `FlexTones.vivid` for example, keeps the chroma as is
  // in key colors for secondary and tertiary, and will thus produce a seeded
  // ColorScheme that is closer to the provided key/seed colors, than the Flutter
  // SDK M3 spec version does.
  tones: kAppFCSFlexTonesLight,

  subThemesData: appFlexSubThemeData,

  typography: kAppFCSTypography,


).toTheme;

final ThemeData appDarkThemeData = FlexColorScheme.dark(
  useMaterial3: kAppFCSUseMaterial3,

  colors: appDarkScheme,
  // only used to specify a FlexColorScheme default scheme
  //scheme: ,

  // on dark swaps primary and secondary
  swapColors: kAppFCSSwapColors,

  // The `usedColors` is a convenience property that allows you to vary which
  // colors to use of the primary, secondary and variant colors included in
  // `colors` in `FlexSchemeColor`, or the `FlexSchemeColor` the enum based
  // selection specifies. The integer number corresponds to using:
  //
  // * 1 = Only the primary color
  // * 2 = Primary & Secondary colors
  // * 3 = Primary + container & Secondary colors
  // * 4 = Primary + container & Secondary + container
  // * 5 = Primary + container & Secondary + container & tertiary colors
  // * 6 = Primary + container & Secondary + container & tertiary + container
  //
  // This can be a quick way to try what you theme looks like when using less
  // source colors and just different shades of the same color, that are still
  // correctly tuned for their ColorScheme color values.
  //
  // The values default to 6, so that any color values that are defined are always
  // used as defined and given.
  usedColors: kAppFCSUsedColors,

  // For an optional white look set lightIsWhite to true.
  // This is the counterpart to darkIsTrueBlack mode in dark theme mode,
  // which is much more useful than this feature.
  //lightIsWhite: false,
  darkIsTrueBlack: kAppFCSDarkIsTrueBlack,

  // If you want to use an existing fully specified `ColorScheme` that
  // your designer or you yourself made, you can do so too. This is
  // useful e.g. if you want the use FlexColorScheme for its component
  // sub-theming with an existing `ColorScheme`. To use a`ColorScheme`
  // object as color sources for your `FlexColorscheme` just pass it to
  // the `colorScheme` property. The `surfaceMode` and `blendLevel` will
  // still adjust surface and background colors on surfaces in passed
  // `ColorScheme` if they are used. This can be demonstrated here with
  // the default Flutter M2 based light ColorScheme set, if uncommented
  // below.
  // Note that to do dynamic_color in the colorscheme builder at top of
  //  appwidget would do theme: appLightFlexThemeDat.copyWith(colorSchmee: dynamic_colorLightColorScheme)
  // colorScheme: const ColorScheme.light(),

  // If you provide a color value to a direct color property, the color
  // value will override anything specified via the other properties.
  // The order from lowest to highest color property priority, to
  // determine effective colors are:
  // 1. scheme 2. colors 3. colorScheme 4. individual color values.
  // Normally you would make a custom scheme using the colors property,
  // but if you want to override just one or two colors in a pre-existing
  // scheme, this can be handy way to do it.
  // Uncomment a color property below on the light theme to try it:

  // primary: FlexColor.indigo.light.primary,
  // primaryContainer: FlexColor.greenLightPrimaryContainer,
  // secondary: FlexColor.indigo.light.secondary,
  // secondaryContainer: FlexColor.indigo.light.secondaryContainer,
  // surface: FlexColor.lightSurface,
  // background: FlexColor.lightBackground,
  // error: FlexColor.materialLightErrorHc,
  // scaffoldBackground: FlexColor.lightScaffoldBackground,
  // dialogBackground: FlexColor.lightSurface,
  // appBarBackground: FlexColor.barossaLightPrimary,

  // The default style of AppBar in Flutter SDK light mode uses scheme
  // primary color as its background color. The appBarStyle
  // FlexAppBarStyle.primary, results in this too, and is the default in
  // light mode. You can also choose other themed styles. Like
  // FlexAppBarStyle.background, that gets active color blend from used
  // surfaceMode or surfaceStyle, depending on which one is being used.
  // You may often want a different style on the app bar in dark and
  // light theme mode, therefore it was not set via a shared value
  // above in this template.
  appBarStyle: kAppFCSAppbarStyle,

  appBarElevation: kAppFCSAppbarElevation,
  appBarOpacity: kAppFCSAppbarOpacity,

  // If true, the top part of the Android AppBar has no scrim, it then becomes
  // one colored like on iOS.
  transparentStatusBar: kAppFCSStatusTransparent,

  // Usually the TabBar is used in an AppBar. This style themes it right for
// that, regardless of what FlexAppBarStyle you use for the `appBarStyle`.
// If you will use the TabBar on Scaffold or other background colors, then
// use the style FlexTabBarStyle.forBackground.
  tabBarStyle: kAppFCSTabbarStyle,

  // The `surfaceMode` takes `FlexSurfaceMode` that is used to select the used
  // strategy for blending primary color into different surface colors.
  surfaceMode: kAppFCSFlexSurfaceMode,
  // The alpha blend level strength can be defined separately from the
  // SurfaceMode strategy, and has 40 alpha blend level strengths.
  blendLevel: kAppFCSBlendLevel,

  // If true, tooltip background brightness is same as background brightness.
  // False by default, which is inverted background brightness compared to theme.
  // Setting this to true is more Windows desktop like.
  tooltipsMatchBackground: kAppFCSTooltipsMatchBackground,

  // The visual density setting defaults to same as SDK default value,
// which is `VisualDensity.adaptivePlatformDensity`. You can define a fixed one
// or try `FlexColorScheme.comfortablePlatformDensity`.
// The `comfortablePlatformDensity` is an alternative adaptive density to the
// default `adaptivePlatformDensity`. It makes the density `comfortable` on
// desktops, instead of `compact` as the `adaptivePlatformDensity` does.
// This is useful on desktop with touch screens, since it keeps tap targets
// a bit larger but not as large as `standard` intended for phones and tablets.
  visualDensity: kAppFCSVisualDensity,

  // You can try another font too.
  // Prefer using fully defined TextThemes when using fonts, rather than
  // just setting the fontFamily name, even with GoogleFonts. For
  // quick tests this is fine if the same font style is good
  // as is for all the styles in the TextTheme, then just the fontFamily
  // works well too.
  //fontFamily: _fontFamily,

  textTheme: lightTextTheme,
  primaryTextTheme: lightTextTheme,
  keyColors: appFlexKeyColors,

  // New in version 5: Custom configuration for seed color calculations.
  //
  // Not only does FlexColorScheme enable using more than one seed color, you
  // can also completely customize the tone mapping and CAM16 chroma limits
  // imposed on used seed generation algorithm.
  //
  // When using Material 3 design and key colors, it generates 6 different tonal
  // palettes `TonalPalette` for the colors in a M3 ColorScheme:
  //
  // * Primary tonal palette
  // * Secondary tonal palette
  // * Tertiary tonal palette
  // * Error tonal palette
  // * Neutral tonal palette
  // * Neutral variant tonal palette
  //
  // Each palette contains 13 colors starting from black and ending in white, with
  // different "tones" in-between of the color used for the palette.
  // ColorScheme.from generates all the palettes from a single input color, and
  // a hard coded value for the error palettes. FlexColorScheme allows you to as
  // seen also specify the input colors for secondary and tertiary tonal palette.
  // The neutral palettes are also generated from the input primary color, but
  // with very little chroma of it left it, a bit more in the variant palette.
  // this is a bit like the surface alpha blend that FlexColorScheme has
  // been using since its first version.
  //
  // The algorithm used by ColorScheme.from also lock chroma for secondary and
  // tertiary to a given value, and primary is min 48, after tha it uses
  // chroma from the provided color. When tonal palettes have been created, it
  // uses fixed tones (indexes) from relevant tonal palette and assigns them
  // to given color properties in the ColorScheme. It is also worth noticing
  // to you should use the same key color for both dark and light theme mode.
  // the algorithm uses the same tonal palette for light and dark modes, but
  // different tones from same palette.
  //
  // FlexColorScheme opens up this algorithm and logic and enables you to
  // modify the color seed logic and behavior. The used algorithm is really
  // fascinating, and the M3 usage of it is fine too. But maybe you want to it
  // produce colors that are even more earthy and softer than M3, that is pretty
  // soft already. Maybe your want more vivid tones, more in classic M2 style, or
  // perhaps you need to seed schemes with much higher contrast for accessibility
  // reasons. With FlexColorScheme you can. You do this by making a custom
  // FlexTones data class to configure how the seeding engine maps palette colors
  // the ColorScheme and how it uses chroma values in the key colors.
  //
  // The `FlexTones` has a `FlexTones.light` and `FlexTones.dark` factory, that
  // are used for respective theme mode when using key colors in FlexColorScheme
  // by default.
  //
  // The `FlexTones.light` factory by default provides the same chroma limits and
  // tone mappings as used by:
  // `ColorScheme.fromSeed(seedColor: color, brightness: Brightness.light)`
  //
  // Likewise the `FlexTones.dark` corresponds to same chroma limits and tone
  // mappings as used by:
  // `ColorScheme.fromSeed(seedColor: color, brightness: Brightness.dark)`.
  //
  // However, with the factories you can customize which tone each ColorScheme
  // color properties uses as its color from its corresponding tonal palette.
  // You can also change if primary, secondary and tertiary colors use the
  // chroma in their key color value, if it should have a at least a given
  // minimum chroma value, and after that use the key color's chroma value,
  // or if it should be locked to a given chroma value.
  //
  // There is also a static that returns a default FlexTones.light and
  // FlexTones.dark, when you pass it a brightness, called FlexTones.material,
  // to indicate that it is using the default Material 3 specification.
  //
  // There are few more pre-made static configurations:
  //
  // * FlexTones.soft
  // * FlexTones.vivid
  // * FlexTones.highContrast
  //
  // You can swap in them in below to try slightly different styles on generated
  // seeded ColorScheme. The `FlexTones.vivid` for example, keeps the chroma as is
  // in key colors for secondary and tertiary, and will thus produce a seeded
  // ColorScheme that is closer to the provided key/seed colors, than the Flutter
  // SDK M3 spec version does.
  tones: kAppFCSFlexTonesDark,

  subThemesData: appFlexSubThemeData,

  typography: kAppFCSTypography,

).toTheme;
