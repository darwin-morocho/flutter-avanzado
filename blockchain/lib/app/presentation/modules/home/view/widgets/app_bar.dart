import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../bloc/home_bloc.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.watch();
    return AppBar(
      title: bloc.state.mapOrNull(
        loaded: (state) => Text(
          state.wsStatus.when(
            connecting: () => 'connecting',
            connected: () => 'connected',
            failed: () => 'failed',
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
