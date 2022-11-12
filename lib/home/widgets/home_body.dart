import 'package:flutter/material.dart';
import 'package:lending_app/shared_widgets.dart';

/// {@template home_body}
/// Body of the HomePage.
///
/// Add what it does
/// {@endtemplate}
class HomeBody extends StatelessWidget {
  /// {@macro home_body}
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          AuthAppBar(),
          Expanded(
            child: Center(
              child: Text('Home Page'),
            ),
          ),
        ],
      ),
    );
  }
}
