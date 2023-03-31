import 'package:flutter/foundation.dart';

import '../../../../domain/repositories/publications_repository.dart';
import 'home_state.dart';

class HomeBloc extends ValueNotifier<HomeState> {
  HomeBloc(
    super.value, {
    required PublicationsRepository repository,
  }) : _repository = repository;

  final PublicationsRepository _repository;

  Future<void> init() async {
    final publications = await _repository.getPublications();
    value = HomeState.loaded(
      publications: publications,
    );
  }
}
