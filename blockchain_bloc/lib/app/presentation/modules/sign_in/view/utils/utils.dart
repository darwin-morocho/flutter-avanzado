part of '../sign_in_view.dart';

Future<void> _submit(BuildContext context) async {
  final SignInBloc bloc = context.read();
  final result = await bloc.signIn();
  if (context.mounted) {
    result.when(
      left: (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              failure.toString(),
            ),
          ),
        );
      },
      right: (_) {
        Navigator.pushReplacementNamed(
          context,
          '/',
        );
      },
    );
  }
}

String? _emailValidator(text) {
  text = text?.trim() ?? '';
  if (text.contains('@')) {
    return null;
  }
  return 'Invalid email';
}

String? _passwordValidator(text) {
  text = text?.trim() ?? '';
  if (text.isEmpty) {
    return 'Invalid password';
  }
  return null;
}
