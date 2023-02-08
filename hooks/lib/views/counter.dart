import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CounterView extends HookWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final numbers = useValueNotifier<List<int>>([]);
    final counter = useValueNotifier<int>(0);

    print('🎃');

    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: counter,
          builder: (_, value, __) {
            print('🐶');
            return Text('$value');
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              counter.value++;
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: numbers,
        builder: (_, list, __) {
          print('✅');
          return ListView.builder(
            itemBuilder: (_, index) {
              final number = list[index];
              return ListTile(
                title: Text(
                  number.toString(),
                ),
              );
            },
            itemCount: list.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final list = [...numbers.value];
          list.add(list.length + 1);
          numbers.value = list;
        },
      ),
    );
  }
}
