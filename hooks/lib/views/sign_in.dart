import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignInView extends HookWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final username = useRef('');
    final password = useRef('');

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
                  onChanged: (text) => username.value = text,
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
                  onChanged: (text) => password.value = text,
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
                        if (Form.of(context).validate()) {
                          print('🥶 _username ${username.value}');
                          print('🥶 _password ${password.value}');
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
