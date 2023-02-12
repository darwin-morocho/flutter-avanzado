import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'cubit.dart';

class BlocProvider<T extends Cubit> extends StatelessWidget {
  const BlocProvider({
    super.key,
    required this.create,
    required this.child,
  });
  final Widget child;
  final T Function(BuildContext) create;

  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T>(
      create: create,
      child: child,
      startListening: (inheritedContext, cubit) {
        final subscription = cubit.stream.listen(
          (_) {
            inheritedContext.markNeedsNotifyDependents();
          },
        );
        return subscription.cancel;
      },
      dispose: (_, cubit) => cubit.dispose(),
    );
  }
}
