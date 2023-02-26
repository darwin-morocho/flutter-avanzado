import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/models/user_model.dart';
import '../../../../domain/repositories/account_repository.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  User? _user;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _init(),
    );
  }

  Future<void> _init() async {
    final user = await context.read<AccountRepository>().getProfile();
    if (mounted) {
      setState(() {
        _user = user;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _user != null
            ? Column(
                children: [
                  Text(
                    _user!.id.toString(),
                  ),
                  Text(_user!.username),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _user = _user!.copyWith(
                          id: 1234564,
                          age: null,
                          username: DateTime.now().toString(),
                        );
                      });
                    },
                    child: Image.network(_user!.avatar),
                  ),
                  Text(
                    _user!.occupations.toString(),
                  ),
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
