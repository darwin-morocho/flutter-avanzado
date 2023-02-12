import 'dart:async';

import '../../../state_management/bloc.dart';
import 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(super.initialState) {
    on<IncrementEvent>(_onIncrement);
    on<DecrementEvent>(_onDecrement);
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        add(
          IncrementEvent(1),
        );
      },
    );
  }

  Timer? _timer;

  void _onIncrement(IncrementEvent event, Emitter<int> emit) {
    emit(state + event.factor);
  }

  void _onDecrement(DecrementEvent event, Emitter<int> emit) {
    emit(state - event.factor);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
