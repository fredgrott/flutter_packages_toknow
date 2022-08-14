// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:statenotifier_provider/app_logger.dart';

class CounterLogger implements AppLogger {
  @override
  void countChanged(int count) {
    log("count changed $count");
  }
}
