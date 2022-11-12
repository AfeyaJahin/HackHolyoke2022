import 'package:flutter/material.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(135, 166, 130, 54),
      elevation: 0,
      // automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Image.asset(
          'images/logo.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
