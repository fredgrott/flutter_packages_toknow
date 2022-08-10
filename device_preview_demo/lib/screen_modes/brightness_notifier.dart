// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:screenshot_modes/screenshot_modes.dart';

class BrightnessNotifier extends StatefulWidget {
  final Widget child;
  final VoidCallback? onBrightnessChanged;

  const BrightnessNotifier({
    super.key,
    required this.child,
    this.onBrightnessChanged,
  });

  @override
  _BrightnessNotifierState createState() => _BrightnessNotifierState();
}

class _BrightnessNotifierState extends State<BrightnessNotifier>
    with WidgetsBindingObserver {
  late Brightness _currentBrightness;

  @override
  void initState() {
    _currentBrightness = SchedulerBinding
        .instance.window.platformBrightness; // Save initial system brightness
    WidgetsBinding.instance
        .addObserver(this); // Bind to app system state events
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance
        .removeObserver(this); // Don't forget to remove the observer
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      final store = DevicePreviewHelper.getDevicePreviewStore(context);
      // App went back to foreground
      final systemBrightness = SchedulerBinding.instance.window
          .platformBrightness; // Check if current system brightness did change
      if (_currentBrightness != systemBrightness) {
        _currentBrightness = systemBrightness;
        // Notify if it did
        widget.onBrightnessChanged?.call();
      }
      if (systemBrightness == Brightness.light) {
        
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
