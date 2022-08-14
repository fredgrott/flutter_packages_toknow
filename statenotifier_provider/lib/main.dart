import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:statenotifier_provider/app_logger.dart';
import 'package:statenotifier_provider/counter_logger.dart';
import 'package:statenotifier_provider/my_app.dart';
import 'package:statenotifier_provider/my_state.dart';
import 'package:statenotifier_provider/my_state_notifier.dart';
import 'package:statenotifier_provider/my_state_tween.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<AppLogger>(create: (_) => CounterLogger()),
        StateNotifierProvider<MyStateNotifier, MyState>(
          create: (_) => MyStateNotifier(),
          // Override MyState to make it animated
          builder: (context, child,) {
            return TweenAnimationBuilder<MyState>(
              duration: const Duration(milliseconds: 500),
              tween: MyStateTween(end: context.watch<MyState>()),
              builder: (context, state, _,) {
                return Provider.value(value: state, child: child,);
              },
            );
          },
        ),
      ],
      child: MyApp(),
    ),
  );
}
