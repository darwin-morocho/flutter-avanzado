import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/sign_in_bloc.dart';
import '../../bloc/sign_in_events.dart';

class SignInCheckBox extends StatelessWidget {
  const SignInCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final termsAccepted = context.select<SignInBloc, bool>(
      (bloc) => bloc.state.termsAccepted,
    );

    return CheckboxListTile(
      value: termsAccepted,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (checked) => context.read<SignInBloc>().add(
            SignInEvent.termsChanged(
              checked ?? false,
            ),
          ),
      title: const Text(
        'Are you ok with our terms?',
      ),
    );
  }
}
