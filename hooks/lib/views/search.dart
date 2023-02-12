import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchView extends HookWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    final scrollController = useScrollController();
    final query = useValueNotifier('');
    final users = useMemoized(
      () {
        final faker = Faker();
        return List.generate(
          1000,
          (_) => faker.person.name(),
        );
      },
    );

    void scrollToTop() {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          controller: textEditingController,
          onChanged: (text) => query.value = text.trim(),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                textEditingController.clear();
                query.value = '';
                FocusManager.instance.primaryFocus?.unfocus();
              },
              icon: const Icon(Icons.clear),
            ),
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: query,
        builder: (_, query, __) {
          final filteredUsers = query.isEmpty
              ? users
              : users
                  .where(
                    (e) => e.toLowerCase().contains(query.toLowerCase()),
                  )
                  .toList();

          return ListView.builder(
            controller: scrollController,
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
        onPressed: scrollToTop,
        child: const Icon(
          Icons.arrow_upward,
        ),
      ),
    );
  }
}
