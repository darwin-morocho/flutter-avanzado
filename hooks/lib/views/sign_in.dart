import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  String _username = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('username'),
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (text) => _username = text,
                  validator: (text) {
                    text = text?.trim() ?? '';
                    if (text.isEmpty) {
                      return 'invalid username';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('password'),
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (text) => _password = text,
                  validator: (text) {
                    text = text?.trim() ?? '';
                    if (text.isEmpty) {
                      return 'invalid password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Builder(
                  builder: (context) {
                    return ElevatedButton(
                      onPressed: () {
                        if (Form.of(context)?.validate() ?? false) {
                          print('_username $_username');
                          print('_password $_password');
                        }
                      },
                      child: const Text('Sign In'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
