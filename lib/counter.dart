import 'package:mobx/mobx.dart';

class Counter {

  Observable _counter = Observable(0);
  Action _increment;

  Counter() {
    _increment = Action(increment);
  }

  int get count => _counter.value;

  void increment() => _counter.value++;

}