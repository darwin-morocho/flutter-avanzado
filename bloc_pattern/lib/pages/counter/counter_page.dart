import 'package:bloc_pattern/pages/counter/bloc/counter_bloc.dart';
import 'package:bloc_pattern/pages/counter/bloc/counter_events.dart';
import 'package:bloc_pattern/pages/counter/counter_cubit.dart';
import 'package:bloc_pattern/state_management/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (_) => CounterBloc(0),
      child: Builder(builder: (context) {
        final CounterBloc bloc = context.watch();
        return Scaffold(
          body: Center(
            child: Text(
              '${bloc.state}',
              style: const TextStyle(fontSize: 25),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              bloc.add(
                IncrementEvent(10),
              );
            },
          ),
        );
      }),
    );
  }
}
