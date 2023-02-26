part of '../home_bloc.dart';

extension _WsExtension on HomeBloc {
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
