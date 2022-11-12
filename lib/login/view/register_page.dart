import 'package:flutter/material.dart';
import 'package:lending_app/login/widgets/register_body.dart';

/// {@template login_page}
/// A description for LoginPage
/// {@endtemplate}
class RegisterPage extends StatelessWidget {
  /// {@macro login_page}
  const RegisterPage({Key? key}) : super(key: key);

  /// The static route for LoginPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const RegisterPage());
  }

  @override
  Widget build(BuildContext context) {
    return const RegisterView();
  }
}

/// {@template login_view}
/// Displays the Body of LoginView
/// {@endtemplate}
class RegisterView extends StatelessWidget {
  /// {@macro login_view}
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RegisterBody();
  }
}
