// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'package:provider/provider.dart';
import 'package:statenotifier_provider/app_logger.dart';
import 'package:statenotifier_provider/counter_logger.dart';
import 'package:statenotifier_provider/my_state.dart';
import 'package:statenotifier_provider/my_state_notifier.dart';
import 'package:statenotifier_provider/my_state_tween.dart';



/// Wraps the child in MaterialApp
Widget appProviderWrapper(Widget child) => MultiProvider(
      providers: [
        Provider<AppLogger>(create: (_) => CounterLogger()),
        StateNotifierProvider<MyStateNotifier, MyState>(
          create: (_) => MyStateNotifier(),
          // Override MyState to make it animated
          builder: (
            context,
            child,
          ) {
            return TweenAnimationBuilder<MyState>(
              duration: const Duration(milliseconds: 500),
              tween: MyStateTween(end: context.watch<MyState>()),
              builder: (
                context,
                state,
                _,
              ) {
                return Provider.value(
                  value: state,
                  child: child,
                );
              },
            );
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home: child,
      ),
    );
