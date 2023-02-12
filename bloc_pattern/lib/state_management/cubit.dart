import 'dart:async';

import 'package:flutter/foundation.dart';

abstract class Cubit<State> {
  Cubit(
    State initialState,
  ) : _state = initialState;

  State _state;
  State get state => _state;

  final _controller = StreamController<State>.broadcast();
  Stream<State> get stream => _controller.stream;

  bool get mounted => !_controller.isClosed;

  @protected
  void emit(State newState) {
    if (mounted && _state != newState) {
      _state = newState;
      _controller.add(_state);
    }
  }

  @mustCallSuper
  FutureOr<void> dispose() async {
    await _controller.close();
  }
}
