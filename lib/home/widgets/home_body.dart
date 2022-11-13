import 'package:flutter/material.dart';
import 'package:lending_app/login/bloc/bloc.dart';

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
      appBar: AppBar(
        // title: const Text('Cup Of Sugar'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/logo.png', fit: BoxFit.contain),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(200, 249, 249, 249)),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: ElevatedButton(
                onPressed: () {
                  context.read<LoginBloc>().add(const LoginNavEvent());
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(200, 249, 249, 249)),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ],
      ),
      body: Column(
        children: const [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('WELCOME TO CUP OF SUGAR',
                  style: TextStyle(fontSize: 30)),
            ),
          ),
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
