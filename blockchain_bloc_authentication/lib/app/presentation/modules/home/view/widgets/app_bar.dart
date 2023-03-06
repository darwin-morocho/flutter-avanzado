import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../global/blocs/session/session_bloc.dart';
import '../../../../global/blocs/session/session_events.dart';
import '../../../../global/cubits/dark_mode/dark_mode_cubit.dart';
import '../../../sign_in/view/sign_in_view.dart';
import '../../bloc/home_bloc.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = context.watch();
    final SessionBloc sessionBloc = context.watch();
    final isSignedIn = sessionBloc.state.user != null;
    return AppBar(
      leading: IconButton(
        onPressed: () {
          if (isSignedIn) {
            sessionBloc.add(
              SessionEvent.signOut(),
            );
          } else {
            GoRouter.of(context).pushReplacementNamed(
              SignInView.routeName,
            );
          }
        },
        icon: Icon(
          isSignedIn ? Icons.person : Icons.login,
        ),
      ),
      title: homeBloc.state.mapOrNull(
        loaded: (state) => Text(
          state.wsStatus.when(
            connecting: () => 'connecting',
            connected: () => 'connected',
            failed: () => 'failed',
          ),
        ),
      ),
      actions: [
        Switch(
          value: Theme.of(context).brightness == Brightness.dark,
          onChanged: context.read<DarkModeCubit>().updateDarkMode,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
