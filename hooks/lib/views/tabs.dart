import 'package:flutter/material.dart';

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

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemBuilder: (_, index) => ListTile(
        title: Text('$index'),
      ),
      itemCount: 200,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
