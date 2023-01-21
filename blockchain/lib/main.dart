import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'app/data/repositories_impl/exchange_repository_impl.dart';
import 'app/data/repositories_impl/ws_repository_impl.dart';
import 'app/data/services/remote/exchage_api.dart';
import 'app/domain/repositories/exchange_repository.dart';
import 'app/domain/repositories/ws_repository.dart';
import 'app/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'es_US';
  runApp(
    MultiProvider(
      providers: [
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
      child: const MyApp(),
    ),
  );
}
