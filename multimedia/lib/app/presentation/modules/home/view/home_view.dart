import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../global/extensions/widget.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import 'widgets/app_bar.dart';
import 'widgets/publication_item.dart';
import 'widgets/quick_actions.dart';
import 'widgets/stories.dart';
import 'widgets/what_is_on_your_mind.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeBloc(
        HomeState.loading(),
        repository: context.read(),
      )..init(),
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: Builder(
          builder: (context) {
            final HomeBloc bloc = context.watch();
            return bloc.value.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (publications) => CustomScrollView(
                slivers: [
                  const WhatIsOnYourMind().asSliverToBoxAdapter,
                  const SizedBox(height: 20).asSliverToBoxAdapter,
                  const QuickActions().asSliverToBoxAdapter,
                  const SizedBox(height: 20).asSliverToBoxAdapter,
                  const Stories().asSliverToBoxAdapter,
                  const SizedBox(height: 20).asSliverToBoxAdapter,
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, index) => PublicationItem(
                        publication: publications[index],
                      ),
                      childCount: publications.length,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
