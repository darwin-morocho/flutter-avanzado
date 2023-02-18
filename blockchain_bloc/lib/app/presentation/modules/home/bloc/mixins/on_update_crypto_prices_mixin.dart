part of '../home_bloc.dart';

mixin _OnUpdateCryptoPricesMixin on Bloc<HomeEvent, HomeState> {
  void _onUpdateCryptoPrices(
    UpdateCryptoPricesEvent event,
    Emitter<HomeState> emit,
  ) {
    state.mapOrNull(
      loaded: (state) {
        final keys = event.prices.keys;
        emit(
          state.copyWith(
            cryptos: [
              ...state.cryptos.map(
                (crypto) {
                  if (keys.contains(crypto.id)) {
                    return crypto.copyWith(
                      price: event.prices[crypto.id]!,
                    );
                  }
                  return crypto;
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
