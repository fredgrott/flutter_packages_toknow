// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:statenotifier_provider/app_logger.dart';
import 'package:statenotifier_provider/my_state.dart';

class MyStateNotifier extends StateNotifier<MyState> with LocatorMixin {
  MyStateNotifier() : super(MyState(0));

  void increment() {
    state = MyState(state.count + 1000);
  }

  @override
  @protected
  set state(MyState value) {
    if (state.count != value.count) {
      read<AppLogger>().countChanged(value.count);
    }
    super.state = value;
  }
}
