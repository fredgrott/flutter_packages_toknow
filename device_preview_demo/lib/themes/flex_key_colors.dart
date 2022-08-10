// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:device_preview_demo/konstants_app.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';


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
const FlexKeyColors appFlexKeyColors = FlexKeyColors(
  useTertiary: kAppFlexKeyColorsUseTertiary,
  useSecondary: kAppFlexKeyColorsUseSecondary,
  keepPrimary: kAppFlexKeyColorsKeepPrimary,
  keepPrimaryContainer: kAppFlexKeyColorsKeepPrimaryContainer,
  keepSecondary: kAppFlexKeyColorsKeepSecondary,
  keepSecondaryContainer: kAppFlexKeyColorsKeepSecondaryContainer,
  keepTertiary: kAppFlexKeyColorsKeepTertiary,
  keepTertiaryContainer: kAppFlexKeyColorsKeepTertiaryContainer,
);
