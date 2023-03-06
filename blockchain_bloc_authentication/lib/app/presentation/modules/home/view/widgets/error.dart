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
        final message = failure.maybeWhen(
          network: () => 'Check your internet connection',
          notFound: () => 'Not found',
          server: () => 'server error',
          orElse: () => 'Unknown error',
        );

        return Center(
          child: Text(message),
        );
      },
      orElse: () => const SizedBox(),
    );
  }
}
