part of '../home_bloc.dart';

mixin _WsMixin on Bloc<HomeEvent, HomeState> {
  WsRepository get _wsRepository;
  StreamSubscription? _pricesSubscription, _wsSubscription;

  final _ids = [
    'bitcoin',
    'ethereum',
    'tether',
    'binance-coin',
    'monero',
    'litecoin',
    'usd-coin',
    'dogecoin',
  ];

  void _onUpdateWsStatus(
    UpdateWsStatusEvent event,
    Emitter<HomeState> emit,
  ) {
    state.mapOrNull(
      loaded: (state) {
        emit(
          state.copyWith(wsStatus: event.status),
        );
      },
    );
  }

  Future<bool> startPricesListening() async {
    final connected = await _wsRepository.connect(_ids);

    add(
      UpdateWsStatusEvent(
        connected ? const WsStatus.connected() : const WsStatus.failed(),
      ),
    );
    await _wsSubscription?.cancel();
    await _pricesSubscription?.cancel();
    _wsSubscription = _wsRepository.onStatusChanged.listen(
      (status) => add(
        UpdateWsStatusEvent(status),
      ),
    );

    _pricesSubscription = _wsRepository.onPricesChanged.listen(
      (prices) => add(
        UpdateCryptoPricesEvent(prices),
      ),
    );

    return connected;
  }
}
