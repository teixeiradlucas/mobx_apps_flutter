// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterController on _CounterControllerBase, Store {
  late final _$counterAtom =
      Atom(name: '_CounterControllerBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_CounterControllerBaseActionController =
      ActionController(name: '_CounterControllerBase', context: context);

  @override
  void countIncrement() {
    final _$actionInfo = _$_CounterControllerBaseActionController.startAction(
        name: '_CounterControllerBase.countIncrement');
    try {
      return super.countIncrement();
    } finally {
      _$_CounterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
