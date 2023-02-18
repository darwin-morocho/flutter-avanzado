import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../bloc/home_bloc.dart';

class HomeError extends StatelessWidget {
  const HomeError({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.watch();
    final state = bloc.state;

    return state.maybeWhen(
      failed: (failure) {
        final message = failure.whenOrNull(
          network: () => 'Check your internet connection',
          server: () => 'server error',
        );

        if (message == null) {
          return const SizedBox();
        }

        return Center(
          child: Text(message),
        );
      },
      orElse: () => const SizedBox(),
    );
  }
}
