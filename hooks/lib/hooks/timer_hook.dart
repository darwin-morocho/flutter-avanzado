import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

int useTimer(Duration duration) {
  return use<int>(
    _Timer(duration),
  );
}

class _Timer extends Hook<int> {
  const _Timer(this.duration);

  final Duration duration;

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends HookState<int, _Timer> {
  int _counter = 0;
  late Timer _timer;

  @override
  void initHook() {
    _timer = Timer.periodic(
      hook.duration,
      (timer) {
        setState(() {
          _counter++;
        });
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
  }

  @override
  int build(BuildContext context) {
    return _counter;
  }
}
