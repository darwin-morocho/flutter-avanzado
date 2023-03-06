import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../crypto_details/view/crypto_details_view.dart';
import '../../bloc/home_bloc.dart';
import '../../bloc/home_events.dart';

const colors = <String, Color>{
  'BTC': Colors.orange,
  'ETH': Colors.deepPurple,
  'USDT': Colors.green,
  'BNB': Colors.yellow,
  'USDC': Colors.blue,
  'DOGE': Colors.deepOrange,
  'LTC': Colors.grey,
  'XMR': Colors.deepOrangeAccent,
};

class HomeLoaded extends StatelessWidget {
  const HomeLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.watch();
    final state = bloc.state;
    return state.maybeMap(
      loaded: (state) {
        final cryptos = state.cryptos;
        return ListView.builder(
          padding: const EdgeInsets.all(6),
          itemBuilder: (_, index) {
            final crypto = cryptos[index];
            return Padding(
              padding: const EdgeInsets.all(4),
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                child: Dismissible(
                  key: Key(crypto.id),
                  onDismissed: (_) => context.read<HomeBloc>().add(
                        DeleteEvent(crypto),
                      ),
                  background: Container(color: Colors.red),
                  child: ListTile(
                    onTap: () => GoRouter.of(context).pushNamed(
                      CryptoDetailView.routeName,
                      params: {
                        'id': crypto.id,
                      },
                    ),
                    tileColor: Theme.of(context).colorScheme.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/${crypto.symbol}.svg',
                          width: 30,
                          height: 30,
                          color: colors[crypto.symbol],
                        ),
                      ],
                    ),
                    title: Text(
                      crypto.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(crypto.symbol),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          NumberFormat.currency(name: r'$')
                              .format(crypto.price),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${crypto.changePercent24Hr.toStringAsFixed(2)}%',
                          style: TextStyle(
                            color: crypto.changePercent24Hr.isNegative
                                ? Colors.redAccent
                                : Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: cryptos.length,
        );
      },
      orElse: () => const SizedBox(),
    );
  }
}
