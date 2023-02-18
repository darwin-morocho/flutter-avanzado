part of '../sign_in_view.dart';

class SignInSubmitButton extends StatelessWidget {
  const SignInSubmitButton({
    super.key,
    required this.onSubmitted,
  });

  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignInBloc>().state;
    final enabled = state.termsAccepted &&
        _emailValidator(state.email) == null &&
        _passwordValidator(state.password) == null;

    return ElevatedButton(
      onPressed: enabled ? onSubmitted : null,
      child: const Text('SIGN IN'),
    );
  }
}
