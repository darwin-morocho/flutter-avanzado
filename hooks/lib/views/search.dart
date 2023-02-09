import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final _textEditingController = TextEditingController();
  final _scrollController = ScrollController();

  late List<String> _users;
  final _query = ValueNotifier('');

  @override
  void initState() {
    super.initState();
    final faker = Faker();
    _users = List.generate(
      1000,
      (_) => faker.person.name(),
    );
  }

  @override
  void dispose() {
    _query.dispose();
    _textEditingController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          controller: _textEditingController,
          onChanged: (text) => _query.value = text.trim(),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                _textEditingController.clear();
                _query.value = '';
                FocusManager.instance.primaryFocus?.unfocus();
              },
              icon: const Icon(Icons.clear),
            ),
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: _query,
        builder: (_, query, __) {
          final filteredUsers = query.isEmpty
              ? _users
              : _users
                  .where(
                    (e) => e.toLowerCase().contains(query.toLowerCase()),
                  )
                  .toList();

          return ListView.builder(
            controller: _scrollController,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemBuilder: (_, index) => ListTile(
              title: Text(
                filteredUsers[index],
              ),
            ),
            itemCount: filteredUsers.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToTop,
        child: const Icon(
          Icons.arrow_upward,
        ),
      ),
    );
  }
}
