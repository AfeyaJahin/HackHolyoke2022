import 'package:flutter/material.dart';
import 'package:lending_app/home/home.dart';
import 'package:lending_app/login/bloc/bloc.dart';
import 'package:lending_app/products/products.dart';

import 'login/view/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      title: 'Cup Of Sugar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(),
          ),
        ],
        child: const BlocNav(),
      ),
    );
  }
}

class BlocNav extends StatelessWidget {
  const BlocNav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    context.read<LoginBloc>().add(const InitializeEvent());
    return BlocBuilder<LoginBloc, LoginState>(builder: ((context, state) {
      if (state is LoggedIn) {
        return const ProductsView();
      } else if (state is Registering) {
        return const RegisterView();
      } else if (state is LoggedOut) {
        return const HomePage();
      } else {
        return const Scaffold(
          body: CircularProgressIndicator(),
        );
      }
    }));
  }
}
