import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_in_bloc.dart';
import '../bloc/sign_in_events.dart';
import '../bloc/sign_in_state.dart';
import 'widgets/sign_in_checkbox.dart';

part 'utils/utils.dart';
part 'widgets/submit_button.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInBloc(
        SignInState(),
        sessionBloc: context.read(),
        authRepository: context.read(),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: BlocBuilder<SignInBloc, SignInState>(
              buildWhen: (previous, current) =>
                  previous.fetching != current.fetching,
              builder: (context, state) => AbsorbPointer(
                absorbing: state.fetching,
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text('Email'),
                        ),
                        onChanged: (text) => context.read<SignInBloc>().add(
                              SignInEvent.emailChanged(
                                text.trim(),
                              ),
                            ),
                        validator: _emailValidator,
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text('Password'),
                        ),
                        onChanged: (text) => context.read<SignInBloc>().add(
                              SignInEvent.passwordChanged(
                                text.trim(),
                              ),
                            ),
                        validator: _passwordValidator,
                      ),
                      const SizedBox(height: 15),
                      const SignInCheckBox(),
                      const SizedBox(height: 15),
                      state.fetching
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : SignInSubmitButton(
                              onSubmitted: () => _submit(context),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
