// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on CounterMobx, Store {
  final _$countAtom = Atom(name: 'CounterMobx.count');

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  final _$CounterMobxActionController = ActionController(name: 'CounterMobx');

  @override
  void increment() {
    final _$actionInfo = _$CounterMobxActionController.startAction(
        name: 'CounterMobx.increment');
    try {
      return super.increment();
    } finally {
      _$CounterMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$CounterMobxActionController.startAction(
        name: 'CounterMobx.decrement');
    try {
      return super.decrement();
    } finally {
      _$CounterMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count}
    ''';
  }
}
