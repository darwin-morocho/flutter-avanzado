part of '../my_app.dart';

mixin _AuthCheckerMixin on State<MyApp> {
  bool _loading = true;

  Future<void> _init() async {
    final AuthRepository authRepository = context.read();
    if (!await authRepository.isSignedIn) {
      setState(() {
        _loading = false;
      });
      return;
    }

    final result = await authRepository.getUser();
    result.when(
      left: (_) {},
      right: (user) {
        context.read<SessionBloc>().add(
              SessionEvent.setUser(user),
            );
      },
    );
    setState(() {
      _loading = false;
    });
  }
}
