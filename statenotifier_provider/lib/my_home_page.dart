// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statenotifier_provider/my_state.dart';
import 'package:statenotifier_provider/my_state_notifier.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: Key("title"),
        title: const Text('Counter example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              
              'You have pushed the button this many times:',
            ),
            Text(
             
              context.select((MyState value) => value.count).toString(),
              style: Theme.of(context).textTheme.headline4,
              key: Key('counter'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key("increment"),
        onPressed: context.watch<MyStateNotifier>().increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
