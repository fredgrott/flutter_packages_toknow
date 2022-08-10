// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

Brightness appBrightness = SchedulerBinding.instance.window.platformBrightness;

late  bool appIsDarkMode;