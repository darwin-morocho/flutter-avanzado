import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../../../domain/models/ws_status/ws_status.dart';
import '../../../../domain/repositories/exchange_repository.dart';
import '../../../../domain/repositories/ws_repository.dart';
import 'home_events.dart';
import 'home_state.dart';

part 'mixins/on_update_crypto_prices_mixin.dart';
part 'mixins/ws_mixin.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>
    with _OnUpdateCryptoPricesMixin, _WsMixin {
  HomeBloc(
    super.initialState, {
    required this.exchangeRepository,
    required WsRepository wsRepository,
  }) : _wsRepository = wsRepository {
    on<InitializeEvent>(_onInitialize);
    on<UpdateWsStatusEvent>(_onUpdateWsStatus);
    on<UpdateCryptoPricesEvent>(_onUpdateCryptoPrices);
    on<DeleteEvent>(_onDelete);
  }

  @override
  final WsRepository _wsRepository;

  final ExchangeRepository exchangeRepository;

  Future<void> _onInitialize(
    InitializeEvent event,
    Emitter<HomeState> emit,
  ) async {
    state.maybeWhen(
      loading: () {},
      orElse: () => emit(
        const HomeState.loading(),
      ),
    );

    final result = await exchangeRepository.getPrices(_ids);

    emit(
      result.when(
        left: (failure) => HomeState.failed(failure),
        right: (cryptos) {
          startPricesListening();
          return HomeState.loaded(cryptos: cryptos);
        },
      ),
    );
  }

  void _onDelete(
    DeleteEvent event,
    Emitter<HomeState> emit,
  ) {
    state.mapOrNull(
      loaded: (state) {
        final cryptos = [...state.cryptos];
        cryptos.removeWhere(
          (element) => element.id == event.crypto.id,
        );
        emit(
          state.copyWith(cryptos: cryptos),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _wsSubscription?.cancel();
    _pricesSubscription?.cancel();
    return super.close();
  }
}
