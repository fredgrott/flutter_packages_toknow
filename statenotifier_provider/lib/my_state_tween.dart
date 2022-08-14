// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:statenotifier_provider/my_state.dart';

class MyStateTween extends Tween<MyState> {
  MyStateTween({super.begin, super.end,});

  @override
  MyState lerp(double t) {
    final countTween = IntTween(begin: begin?.count, end: end?.count,);
    
    // Tween the count
    return MyState(
      countTween.lerp(t),
    );
  }
}
