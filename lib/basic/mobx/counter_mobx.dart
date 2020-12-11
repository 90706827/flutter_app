import 'package:mobx/mobx.dart';

part 'counter_mobx.g.dart';

class Counter = CounterMobx with _$Counter;

abstract class CounterMobx with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }

  @action
  void decrement() {
    count--;
  }
}
