import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TabsView extends StatelessWidget {
  const TabsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: '1',
              ),
              Tab(
                text: '2',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MyList(),
            MyList(),
          ],
        ),
      ),
    );
  }
}

class MyList extends HookWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    return ListView.builder(
      itemBuilder: (_, index) => ListTile(
        title: Text('$index'),
      ),
      itemCount: 200,
    );
  }
}
