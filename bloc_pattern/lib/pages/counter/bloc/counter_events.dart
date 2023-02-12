abstract class CounterEvent {
  final int factor;

  CounterEvent(this.factor);
}

class IncrementEvent extends CounterEvent {
  IncrementEvent(super.factor);
}

class DecrementEvent extends CounterEvent {
  DecrementEvent(super.factor);
}
