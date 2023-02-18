import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'app/data/repositories_impl/auth_repository_impl.dart';
import 'app/data/repositories_impl/exchange_repository_impl.dart';
import 'app/data/repositories_impl/ws_repository_impl.dart';
import 'app/data/services/remote/exchage_api.dart';
import 'app/domain/repositories/auth_repository.dart';
import 'app/domain/repositories/exchange_repository.dart';
import 'app/domain/repositories/ws_repository.dart';
import 'app/my_app.dart';
import 'app/presentation/global/blocs/session/session_bloc.dart';
import 'app/presentation/global/blocs/session/session_state.dart';
import 'app/presentation/global/cubits/dark_mode/dark_mode_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'es_US';
  runApp(
    MultiProvider(
      providers: [
        Provider<AuthRepository>(
          create: (_) => AuthRepositoryImpl(),
        ),
        Provider<ExchangeRepository>(
          create: (_) => ExchangeRepositoryImpl(
            ExchangeAPI(
              Client(),
            ),
          ),
        ),
        Provider<WsRepository>(
          create: (_) => WsRepositoryImpl(
            (ids) => WebSocketChannel.connect(
              Uri.parse(
                'wss://ws.coincap.io/prices?assets=${ids.join(',')}',
              ),
            ),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => DarkModeCubit(false),
          ),
          BlocProvider(
            create: (_) => SessionBloc(
              SessionState(),
            ),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}
