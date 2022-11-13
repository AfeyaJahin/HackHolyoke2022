import 'package:flutter/material.dart';
import 'package:lending_app/home/home.dart';
import 'package:lending_app/login/bloc/bloc.dart';
import 'package:lending_app/products/products.dart';

import 'login/view/register_page.dart';

// import packages for product and cart
import 'package:lending_app/bloc/cart_bloc.dart';
import 'package:lending_app/product_listing_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return: MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (BuildContext context) => CartBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Cup Of Sugar',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductListWidget(),
      ),
    );
  }
}

// home
// class HomeScreen extends StatelessWidget {
//   @override
//   widget build(BuildContext context) {
//     return Scaffold(
//       // app bar 
//       appBar: AppBar(),
//       bottomNavigationBar: BottomAppBar(),
//     ); // Scaffold
//   }
// }


// class BlocNav extends StatelessWidget {
//   const BlocNav({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     context.read<LoginBloc>().add(const InitializeEvent());
//     return BlocBuilder<LoginBloc, LoginState>(builder: ((context, state) {
//       if (state is LoggedIn) {
//         return const ProductsView();
//       } else if (state is Registering) {
//         return const RegisterView();
//       } else if (state is LoggedOut) {
//         return const HomePage();
//       } else {
//         return const Scaffold(
//           body: CircularProgressIndicator(),
//         );
//       }
//     }));
//   }
// }
