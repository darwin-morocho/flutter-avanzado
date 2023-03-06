part of '../my_app.dart';

mixin _RouterMixin on State<MyApp> {
  final _router = GoRouter(
    routes: [
      GoRoute(
        name: HomeView.routeName,
        path: HomeView.routePath,
        builder: (_, __) => const HomeView(),
      ),
      GoRoute(
        name: CryptoDetailView.routeName,
        path: CryptoDetailView.routePath,
        builder: (_, state) {
          return CryptoDetailView(
            cryptoId: state.params['id']!,
          );
        },
        redirect: (context, _) {
          final user = context.read<SessionBloc>().state.user;
          if (user == null) {
            return SignInView.routePath;
          }
          return null;
        },
      ),
      GoRoute(
        name: SignInView.routeName,
        path: SignInView.routePath,
        builder: (_, __) => const SignInView(),
        redirect: (context, _) {
          final user = context.read<SessionBloc>().state.user;
          if (user != null) {
            return HomeView.routePath;
          }
          return null;
        },
      ),
    ],
  );
}
