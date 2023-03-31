import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/publication.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.loading() = _Loading;
  factory HomeState.loaded({
    required List<Publication> publications,
  }) = _Loaded;
}
