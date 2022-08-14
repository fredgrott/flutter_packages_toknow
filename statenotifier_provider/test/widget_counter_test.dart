// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:statenotifier_provider/app_logger.dart';
import 'package:statenotifier_provider/my_home_page.dart';
import 'package:statenotifier_provider/my_state_notifier.dart';

import 'app_provider_wrapper.dart';


class LoggerMock extends Mock implements AppLogger {}

void main() {
  group(
    "Has Title, Counter Text, Add Icon, and Add Icon Tappable",
    () {
      testWidgets(
        "Has Title",
        (WidgetTester tester) async {
          final titleFinder = find.byKey(Key('title'));

          await tester.pumpWidget(appProviderWrapper(const MyHomePage()));

          expect(
            titleFinder,
            findsOneWidget,
          );
        },
      );

      testWidgets(
        "Has Counter",
        (WidgetTester tester) async {
          final counterTextFinder = find.byKey(Key("counter"));

          await tester.pumpWidget(appProviderWrapper(const MyHomePage()));

          expect(
            counterTextFinder,
            findsOneWidget,
          );
        },
      );

      testWidgets(
        "Has Add Button",
        (WidgetTester tester) async {
          final addFinder = find.byKey(Key('increment'));

          await tester.pumpWidget(appProviderWrapper(const MyHomePage()));

          expect(
            addFinder,
            findsOneWidget,
          );
        },
      );

      // With Provider we use debugMocKDependency to override read so that we can mock with the dependency.
      // Only with provider, with Riverpod we use combo of ProviderScope and other things to inject and mock.
      testWidgets(
        "Has Add Button, Tappable",
        (WidgetTester tester) async {
          final logger = LoggerMock();
          final myNotifier = MyStateNotifier()
            ..debugMockDependency<AppLogger>(logger);



          final addFinder = find.byKey(Key('increment'));

          

          await tester.pumpWidget(appProviderWrapper(const MyHomePage()));

          expect(
            myNotifier.debugState.count,
            0,
          );

          await tester.tap(addFinder);

          myNotifier.increment();

          expect(
            myNotifier.debugState.count,
            1000,
          );
          verify<void>(logger.countChanged(1000)).called(1);
          verifyNoMoreInteractions(logger);


        },
      );
    },
  );

  
}
