import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view.dart';
import '../../../../../../../../../main.dart';
import '../action/increase_count.dart';

@JuneViewMother()
mixin StateMother<T extends StatefulWidget> on State<T> {
  bool ignoreReadyView() => false;

  Future<void> readyState(BuildContext context) async {}

  Widget loadingWidget() {
    return CupertinoActivityIndicator().center();
  }

  /// automatically generated action code - don't change this code

increaseCountAction() {
  var state = NewViewState(); // do not change this line
  state.counter = state.counter + 1;
  updateState(() {});

  _test();
}

_test() {
  print('test increase_count.dart');
}
  /// end of automatically action generated code
  /// automatically generated event code - don't change this code

clickIncrementButtonEvent(BuildContext context) {
  increaseCountAction();
}
  /// end of automatically event generated code
}
