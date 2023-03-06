import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_events.dart';
import '../bloc/home_state.dart';
import 'widgets/app_bar.dart';
import 'widgets/error.dart';
import 'widgets/loaded.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = 'home';
  static const routePath = '/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => HomeBloc(
        const HomeState.loading(),
        exchangeRepository: context.read(),
        wsRepository: context.read(),
      )..add(
          InitializeEvent(),
        ),
      child: Builder(
        builder: (context) {
          final HomeBloc bloc = context.watch();
          return Scaffold(
            appBar: const HomeAppBar(),
            body: bloc.state.map(
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              failed: (_) => const HomeError(),
              loaded: (_) => const HomeLoaded(),
            ),
          );
        },
      ),
    );
  }
}
