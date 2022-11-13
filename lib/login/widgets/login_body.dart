import 'package:flutter/material.dart';
import 'package:lending_app/login/bloc/bloc.dart';
import 'package:lending_app/login/widgets/widgets.dart';

/// {@template login_body}
/// Body of the LoginPage.
///
/// Add what it does
/// {@endtemplate}
class LoginBody extends StatelessWidget {
  /// {@macro login_body}
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              // if (constraints.maxWidth < 600) {
              //   return const LoginMobile();
              // } else if (constraints.maxWidth > 600 &&
              //     constraints.maxWidth < 900) {
              //   return const LoginTablet();
              // } else {
              return const LoginDesktop();
              // }
            },
          ),
          bottomNavigationBar: const BottomRegisterBar(),
        );
      },
    );
  }
}
