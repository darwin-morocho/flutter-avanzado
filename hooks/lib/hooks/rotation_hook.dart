import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef RotationCallback = void Function(Orientation);

void useRotationListener(
  RotationCallback callback,
) {
  return use<void>(
    _Rotation(callback),
  );
}

class _Rotation extends Hook<void> {
  const _Rotation(this.callback);

  final RotationCallback callback;

  @override
  _RotationState createState() => _RotationState();
}

class _RotationState extends HookState<void, _Rotation>
    with WidgetsBindingObserver {
  ///
  late Orientation _orientation;

  Orientation _getOrientation() {
    final size = WidgetsBinding.instance.window.physicalSize;
    return size.width > size.height
        ? Orientation.landscape
        : Orientation.portrait;
  }

  @override
  void initHook() {
    _orientation = _getOrientation();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeMetrics() {
    final orientation = _getOrientation();

    if (_orientation != orientation) {
      _orientation = orientation;
      hook.callback(
        _orientation,
      );
    }
  }

  @override
  void build(BuildContext context) {}
}
