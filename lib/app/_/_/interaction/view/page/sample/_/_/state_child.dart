import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view.dart';
import '../../../../../../../../../main.dart';
import '../action/increase_count.dart';

@JuneViewChild()
class StateChild extends NewViewState {
  bool isReadyView = false;

  late StateChild state;

  StateChild() {
    state = this;
  }

  @override
  void initState() {
    if (ignoreReadyView()) {
      isReadyView = true;
    } else {
      _ready();
    }

    super.initState();
  }

  Future<void> _ready() async {
    if (!ignoreReadyView()) {
      await readyState(context);
    }
    if (mounted) {
      setState(() {
        isReadyView = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isReadyView) {
      return loadingWidget();
    }

    return super.build(context);
  }

  /// automatically generated action code - don't change this code

@override
increaseCountAction() {
  counter = counter + 1;
  setState(() {});

  _test();
}

_test() {
  print('test increase_count.dart');
}
  /// end of automatically action generated code
  /// automatically generated event code - don't change this code

@override
clickIncrementButtonEvent(BuildContext context) {
  increaseCountAction();
}
  /// end of automatically event generated code
}
