import 'package:mobx/mobx.dart';
part 'counter_controller.g.dart';

class CounterController = _CounterControllerBase with _$CounterController;

abstract class _CounterControllerBase with Store {
  @observable
  int counter = 0;

  @action
  void countIncrement() {
    counter++;
  }
}
