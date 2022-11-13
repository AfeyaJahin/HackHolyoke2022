import 'package:flutter/material.dart';
import 'package:lending_app/login/bloc/bloc.dart';
import 'dart:developer' as devtools show log;

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    devtools.log('width: $width, height: $height');
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
                  onPressed: () {
                    context.read<LoginBloc>().add(const RegisterNavEvent());
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
        body: Stack(
          children: [
            Align(
                alignment: const Alignment(1, 0.4),
                child: Image(
                    width: width / 2,
                    height: height * 0.7,
                    image: const AssetImage(
                      'images/home_img.png',
                    ))),
            Align(
              alignment: const Alignment(0, -0.9),
              child: Text(
                'WELCOME TO CUP OF SUGAR',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, -0.4),
              child: SizedBox(
                width: 500,
                child: Text(
                  'Make an impact and earn money at the same time with us',
                  style: Theme.of(context).textTheme.displaySmall,
                  maxLines: 3,
                  // textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, 0.0),
              child: SizedBox(
                width: 500,
                child: Text(
                  '50% of your earned money from selling or lending goes to a mutualaid of your choice',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black),
                  maxLines: 2,
                  // textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.88, 0.3),
              child: Text(
                'Be a good neighbor, Loan, sell, borrow, donate today',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black),
                maxLines: 1,
                // textAlign: TextAlign.justify,
              ),
            ),
            Align(
                alignment: const Alignment(-0.9, 0.6),
                child: SizedBox(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: Material(
                          elevation: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          shadowColor: Colors.black,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                            child: Text('Get started',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: Material(
                          elevation: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          shadowColor: Colors.black,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                            child: Text('How it works',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
