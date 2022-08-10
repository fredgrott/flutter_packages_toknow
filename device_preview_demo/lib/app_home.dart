// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_positional_boolean_parameters

import 'package:device_preview_demo/proof_sheet/color_palettes_screen.dart';
import 'package:device_preview_demo/proof_sheet/component_screen.dart';
import 'package:device_preview_demo/proof_sheet/elevation_screen.dart';
import 'package:device_preview_demo/proof_sheet/typography_screen.dart';

import 'package:flutter/material.dart';

const double narrowScreenWidthThreshold = 450;
int screenIndex = 0;

class AppHome extends StatefulWidget {
  

  @override
  State<StatefulWidget> createState() => _AppHome();
}

class _AppHome extends State<AppHome> {
  

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  Widget createScreenFor(
    int screenIndex,
    bool showNavBarExample,
  ) {
    switch (screenIndex) {
      case 0:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
      case 1:
        return const ColorPalettesScreen();
      case 2:
        return const TypographyScreen();
      case 3:
        return const ElevationScreen();
      default:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: const Text("AppStore"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        context,
        constraints,
      ) {
        return constraints.maxWidth < narrowScreenWidthThreshold
            ? Scaffold(
                appBar: createAppBar(),
                body: Row(
                  children: <Widget>[createScreenFor(screenIndex, false)],
                ),
                bottomNavigationBar: NavigationBars(
                  onSelectItem: handleScreenChanged,
                  selectedIndex: screenIndex,
                  isExampleBar: false,
                ),
              )
            : Scaffold(
                body: SafeArea(
                  bottom: false,
                  top: false,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: NavigationRailSection(
                          onSelectItem: handleScreenChanged,
                          selectedIndex: screenIndex,
                        ),
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        width: 1,
                      ),
                      createScreenFor(screenIndex, true)
                    ],
                  ),
                ),
              );
      },
    );
  }
}
