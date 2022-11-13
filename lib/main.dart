import 'package:flutter/material.dart';
import 'package:lending_app/home/home.dart';
import 'package:lending_app/login/login.dart';
import 'package:lending_app/products/products.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer' as devtools show log;

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
        textTheme: GoogleFonts.lancelotTextTheme(),
        primarySwatch:
            // ignore: use_full_hex_values_for_flutter_colors
            MaterialColor(0x09C2AE, getSwatch(const Color(0x09C2AE))),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(135, 166, 130, 0.21),
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(53, 232, 234, 222),
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(),
          ),
          BlocProvider<ProductsBloc>(
            create: (context) => ProductsBloc(),
          )
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
    context.read<LoginBloc>().add(const LoginSuccessEvent());
    return BlocBuilder<LoginBloc, LoginState>(builder: ((context, state) {
      if (state is LoggedIn) {
        return const ProductsPage();
      } else if (state is Registering) {
        return const RegisterView();
      } else if (state is LoggedOut) {
        return const HomePage();
      } else if (state is LoggingIn) {
        return const LoginPage();
      } else {
        devtools.log(state.toString());
        return const Scaffold(
          body: CircularProgressIndicator(),
        );
      }
    }));
  }
}

Map<int, Color> getSwatch(Color color) {
  final hslColor = HSLColor.fromColor(color);
  final lightness = hslColor.lightness;

  /// if [500] is the default color, there are at LEAST five
  /// steps below [500]. (i.e. 400, 300, 200, 100, 50.) A
  /// divisor of 5 would mean [50] is a lightness of 1.0 or
  /// a color of #ffffff. A value of six would be near white
  /// but not quite.
  const lowDivisor = 6;

  /// if [500] is the default color, there are at LEAST four
  /// steps above [500]. A divisor of 4 would mean [900] is
  /// a lightness of 0.0 or color of #000000
  const highDivisor = 5;

  final lowStep = (1.0 - lightness) / lowDivisor;
  final highStep = lightness / highDivisor;

  return {
    50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
    100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
    200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
    300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
    400: (hslColor.withLightness(lightness + lowStep)).toColor(),
    500: (hslColor.withLightness(lightness)).toColor(),
    600: (hslColor.withLightness(lightness - highStep)).toColor(),
    700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
    800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
    900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
  };
}
