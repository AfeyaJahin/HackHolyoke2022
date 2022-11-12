import 'package:flutter/material.dart';
import 'package:lending_app/login/bloc/bloc.dart';

/// {@template login_body}
/// Body of the LoginPage.
///
/// Add what it does
/// {@endtemplate}
class RegisterBody extends StatelessWidget {
  /// {@macro login_body}
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Text(state.customProperty);
      },
    );
  }
}
