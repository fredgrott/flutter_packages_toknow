// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// App constants


import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';






// FCS SubThemes
// Opt in for themed hover, focus, highlight and splash effects.
// New buttons use primary themed effects by default, this setting makes
// the general ThemeData hover, focus, highlight and splash match that.
// True by default when opting in on sub themes, but you can turn it off.
const bool kAppSubThemeInteractionEffects = true;
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
const double? kAppSubThemeDefaultRadius = null;
// You can also override individual corner radius for each sub-theme to make
// it different from the global `cornerRadius`. Here eg. the bottom sheet
// radius is defined to always be 24:
const double kAppSubThemeBottomSheetRadius = 24;
// Use the Material 3 like text theme. Defaults to true.
const bool kAppSubThemeUseTextTheme = true;
// Select input decorator type, only SDK options outline and underline
// supported no, but custom ones may be added later
const FlexInputBorderType kAppSubThemeInputDecorType = FlexInputBorderType.outline;
// For a primary color tinted background on the input decorator set to true.
const bool kAppSubThemeInputDecIsFilled = true;
// If you do not want any underline/outline on the input decorator when it is
// not in focus, then set this to false.
// ignore: prefer-correct-identifier-length
const bool kAppSubThemeInputUnfocusHasBorder = true;
// Select the ColorScheme color used for input decoration border.
// Primary is default so no need to set that, used here as placeholder to
// enable easy selection of other options
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeInputDecorSchemeColor = SchemeColor.primary;
// If fabUseShape is false, no shape will be added to FAB theme, it will get
// whatever default shape the widget default behavior applies.
const bool kAppSubthemeFabUseShape = true;
// Select the ColorScheme color used by FABs as their base/background color
// Secondary is default so no need to set that, used here as placeholder to
// enable easy selection of other options.
const SchemeColor kAppSubThemeFabSchemeColor = SchemeColor.secondaryContainer;
// Select the ColorScheme color used by Chips as their base color
// Primary is default so no need to set that, used here as placeholder to
// enable easy selection of other options.
const SchemeColor kAppSubThemeChipSchemeColor = SchemeColor.primary;
// Elevations have easy override values as well.
// ignore: prefer-correct-identifier-length
const double kAppSubThemeElevatedButtonWElevation = 1;
// Widgets that use outline borders can be easily adjusted via these
// properties, they affect the outline input decorator, outlined button and
// toggle buttons.
const double kAppSubThemeThickBorderWidth = 2;
const double kAppSubThemeThinBorderWidth = 1.5;
// Select the ColorScheme color used for selected TabBar indicator.
// Defaults to same color as selected tab if not defined.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeTabbarIndicatorSchemeColor = SchemeColor.secondary;
// Select the ColorScheme color used for selected bottom navigation bar item.
// Primary is default so no need to set that, used here as placeholder to
// enable easy selection of other options.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeBottomNavSelectLabelSchemeColor = SchemeColor.primary;
// Select the ColorScheme color used for bottom navigation bar background.
// Background is default so no need to set that, provided here as placeholder
// to enable easy selection of other options.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppBarSubThemeBottomNavBackgroundSchemeColor = SchemeColor.background;
// SchemeColor based color for [NavigationBar]'s selected item icon.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeNavSelectedIconSchemeColor = SchemeColor.tertiary;
// SchemeColor based color for [NavigationBar]'s selected item label.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeNavSelectedLabelSchemeColor = SchemeColor.tertiary;
// SchemeColor based color for [NavigationBar]'s unselected item icons.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeNavUnSelectedIconSchemeColor = SchemeColor.onSurface;
// SchemeColor based color for [NavigationBar]'s unselected item icons.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeNavUnSelectedLabelSchemeColor = SchemeColor.onSurface;
// SchemeColor based color for [NavigationBar]'s selected item highlight.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeNavIndicatorSchemeColor = SchemeColor.tertiaryContainer;
// If you use suitable M3 designed container color for the indicator, it
// does not need any opacity.
// ignore: prefer-correct-identifier-length
const double kAppSubThemeNavIndicatorOpacity = 1;
// Select the ColorScheme color used for [NavigationBar]'s background.
// ignore: prefer-correct-identifier-length
const SchemeColor kAppSubThemeNavBackgroundSchemeColor = SchemeColor.background;
// When set to true [NavigationBar] unselected icons use a more muted
// version of color defined by [navigationBarUnselectedIconSchemeColor].
// ignore: prefer-correct-identifier-length
const bool kAppSubThemeNavMutedUnSelectIcon = true;
// When set to true [NavigationBar] unselected labels use a more muted
// version of color defined by [navigationBarUnselectedLabelSchemeColor].
// ignore: prefer-correct-identifier-length
const bool kAppSubThemeNavMutedUnSelectLabel = true;
// Set size of labels.
const double kAppSubThemeNavSelectLabelSize = 12;
// unselected label size
// ignore: prefer-correct-identifier-length
const double kAppSubThemeNavUnSelectLabelSize = 10;
// selected icon size
const double kAppSubThemeNavSelectIconSize = 26;
// unselected icon size
// ignore: prefer-correct-identifier-length
const double kAppSubThemeNavUnSelectIconSize = 22;

// Flex Key Colors
// New in version 5: Key color seed based theming.
//
// If you want to use Material 3 based seed generated color schemes, using
// the current FlexColorScheme's colors as input to the seed generation. You
// can do so by passing in just a default `FlexKeyColors()` object to the
// `keyColors` property in FlexColorScheme.light and .dark factories.
//
// FlexKeyColors can be also configured, if its `useKeyColors` is false it is
// no being used, likewise it is not if the property `keyColors` is null.
//
// The default constructor `FlexKeyColors()` has the properties `useKeyColors`,
// `useSecondary` and `useTertiary` defaulting to true. This means the primary,
// secondary and tertiary colors from your active FlexColorScheme's colors will
// all be used as key colors to generate the theme's ColorScheme.
//
// The primary color is always using useKeyColors is true, but using secondary
// and tertiary colors to generate the ColorScheme are optional.
// They are on by default in the default constructor, to omit them set any
// of them to false.
//
// Flutter SDK `ColorScheme.fromSeed` only accepts a/ single color,
// the main/primary color as a seed color for the Material 3 ColorScheme
// it generates from a seed color. If you set both `useSecondary`
// and `useTertiary` to false, the result is the same as if you would have
// provided the current primary color value from the active FlexColorScheme
// to `ColorScheme.fromSeed` to generate the theme used `ColorScheme`.
// When you also use secondary and tertiary colors as input to generate the
// ColorScheme, their color values are based on them, instead of being sourced
// in fixed manner from the single primary color. This makes the generated
// ColorScheme follow the colors in your specified keys to a larger degree
// than Flutter SDK `ColorScheme.fromSeed` does.
//
// When you use seeded ColorSchemes, the key color used as seed color as primary
// color, secondary and tertiary usually do not end up in the resulting
// ColorScheme. This can be problematic when your spec calls for a specific
// specific e.g. brand color for certain color properties.
//
// With FlexColorscheme you can, for e.g. branding or other purposes, decide to
// keep one or more of the defined color values in your FlexColorScheme at its
// defined color value, despite otherwise using seeded color values to produce
// the resulting `ColorScheme`from them. There is a `keep` toggle in
// `FlexKeyColors` for all the six main colors in a `ColorScheme`, you can
// set any of them to true, to keep the color in question it has as input
// in your FlexColorScheme.
const bool kAppFlexKeyColorsUseTertiary = true;
const bool kAppFlexKeyColorsUseSecondary = true;
const bool kAppFlexKeyColorsKeepPrimary = true;
//
// ignore: prefer-correct-identifier-length
const bool kAppFlexKeyColorsKeepPrimaryContainer = true;
const bool kAppFlexKeyColorsKeepSecondary = true;
//
// ignore: prefer-correct-identifier-length
const bool kAppFlexKeyColorsKeepSecondaryContainer = true;
const bool kAppFlexKeyColorsKeepTertiary = true;
//
// ignore: prefer-correct-identifier-length
const bool kAppFlexKeyColorsKeepTertiaryContainer = true;

// FCS Seed Colors
const Color kAppFCSLightPrimary = Color(0xFF00296B);
//
// ignore: prefer-correct-identifier-length
const Color kAppFCSLightPrimaryContainer = Color(0xFFA0C2ED);
const Color kAppFCSLightSecondary = Color(0xFFD26900);
const Color kAppFCSLightSecondaryContainer = Color(0xFFFFD270);
const Color kAppFCSLightTertiary = Color(0xFF5C5C95);
const Color kAppFCSLightTertieryContainer = Color(0xFFC8DBF8);
// The built in schemes use their tertiary color as their default
// custom app bar color, but it can be any color. We use a custom color
// here. We will see this in example 5 when using the theme and selecting
// the custom app bar style. We use a light blue that matches branded
// surface colors, but is a bit stronger than most surface branding.
const Color kAppFCSLightAppbarBackground = Color(0xFFC8DCF8);
const Color kAppFCSDarkPrimary = Color(0xFFB1CFF5);
const Color kAppFCSDarkPrimaryContainer = Color(0xFF3873BA);
const Color kAppFCSDarkSecondary = Color(0xFFFFD270);
const Color kAppFCSDarkSecondaryContainer = Color(0xFFD26900);
const Color kAppFCSDarkTertiary = Color(0xFFC9CBFC);
const Color kAppFCSDarkTertiaryContainer = Color(0xFF535393);
const Color kAppFCSDarkAppbarBackground = Color(0xFF00102B);

// FCS ThemeData
const bool kAppFCSUseMaterial3 = true;
// on dark swaps primary and secondary
const bool kAppFCSSwapColors = true;
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
const int kAppFCSUsedColors = 6;
// For an optional white look set lightIsWhite to true.
// This is the counterpart to darkIsTrueBlack mode in dark theme mode,
// which is much more useful than this feature.
const bool kAppFCSLightIsWihite = true;
const bool kAppFCSDarkIsTrueBlack = true;
// The default style of AppBar in Flutter SDK light mode uses scheme
// primary color as its background color. The appBarStyle
// FlexAppBarStyle.primary, results in this too, and is the default in
// light mode. You can also choose other themed styles. Like
// FlexAppBarStyle.background, that gets active color blend from used
// surfaceMode or surfaceStyle, depending on which one is being used.
// You may often want a different style on the app bar in dark and
// light theme mode, therefore it was not set via a shared value
// above in this template.
const FlexAppBarStyle kAppFCSAppbarStyle = FlexAppBarStyle.primary;
const double kAppFCSAppbarElevation = 0.5;
const double kAppFCSAppbarOpacity = 0.94;
// If true, the top part of the Android AppBar has no scrim, it then becomes
// one colored like on iOS.
const bool kAppFCSStatusTransparent = true;
// Usually the TabBar is used in an AppBar. This style themes it right for
// that, regardless of what FlexAppBarStyle you use for the `appBarStyle`.
// If you will use the TabBar on Scaffold or other background colors, then
// use the style FlexTabBarStyle.forBackground.
const FlexTabBarStyle kAppFCSTabbarStyle = FlexTabBarStyle.forAppBar;
// The `surfaceMode` takes `FlexSurfaceMode` that is used to select the used
// strategy for blending primary color into different surface colors.
const FlexSurfaceMode kAppFCSFlexSurfaceMode = FlexSurfaceMode.highBackgroundLowScaffold;
// The alpha blend level strength can be defined separately from the
// SurfaceMode strategy, and has 40 alpha blend level strengths.
const int kAppFCSBlendLevel = 20;
// If true, tooltip background brightness is same as background brightness.
// False by default, which is inverted background brightness compared to theme.
// Setting this to true is more Windows desktop like.
const bool kAppFCSTooltipsMatchBackground = true;
// The visual density setting defaults to same as SDK default value,
// which is `VisualDensity.adaptivePlatformDensity`. You can define a fixed one
// or try `FlexColorScheme.comfortablePlatformDensity`.
// The `comfortablePlatformDensity` is an alternative adaptive density to the
// default `adaptivePlatformDensity`. It makes the density `comfortable` on
// desktops, instead of `compact` as the `adaptivePlatformDensity` does.
// This is useful on desktop with touch screens, since it keeps tap targets
// a bit larger but not as large as `standard` intended for phones and tablets.
final VisualDensity kAppFCSVisualDensity =
    FlexColorScheme.comfortablePlatformDensity;
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
final FlexTones kAppFCSFlexTonesLight = FlexTones.material(Brightness.light);
final FlexTones kAppFCSFlexTonesDark = FlexTones.material(Brightness.dark);
final Typography kAppFCSTypography = Typography.material2021();
