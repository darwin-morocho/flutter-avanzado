import 'dart:async';

import 'package:flutter/foundation.dart';

import 'cubit.dart';

typedef Emitter<State> = void Function(State newState);
typedef EventHandler<E, State> = FutureOr<void> Function(
  E event,
  Emitter<State> emit,
);

abstract class Bloc<Event, State> extends Cubit<State> {
  Bloc(super.initialState);

  final _handlers = <Type, Function>{};

  @protected
  void on<E extends Event>(EventHandler<E, State> handler) {
    _handlers.putIfAbsent(
      E,
      () => handler,
    );
  }

  void add<E extends Event>(E event) {
    assert(
      _handlers.containsKey(E),
      'on<${E.toString()}>(...) must be called in the constructor',
    );
    final fn = _handlers[E] as EventHandler<E, State>;
    fn(event, emit);
  }

  @visibleForTesting
  @override
  void emit(State newState) => super.emit(newState);
}
