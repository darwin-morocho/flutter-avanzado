import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/home_bloc.dart';
import 'widgets/app_bar.dart';
import 'widgets/error.dart';
import 'widgets/loaded.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeBloc(
        exchangeRepository: context.read(),
        wsRepository: context.read(),
      )..init(),
      builder: (context, _) {
        final HomeBloc bloc = context.watch();
        return Scaffold(
          backgroundColor: const Color(0xffF2F5F8),
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
    );
  }
}
