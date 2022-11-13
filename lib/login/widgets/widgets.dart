export 'login_body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lending_app/login/bloc/login_bloc.dart';

// class LoginMobile extends StatefulWidget {
//   const LoginMobile({Key? key}) : super(key: key);

//   @override
//   State<LoginMobile> createState() => _LoginMobileState();
// }

// class _LoginMobileState extends State<LoginMobile> {
//   bool _isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 30, right: 30, top: 140, bottom: 60),
//       child: SingleChildScrollView(
//         child: SizedBox(
//           // width: 300,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Text(
//                 'Welcome back',
//                 style: GoogleFonts.inter(
//                   fontSize: 17,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Login to your account',
//                 style: GoogleFonts.inter(
//                   fontSize: 23,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               const SizedBox(height: 35),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   hintText: 'abc@example.com',
//                   labelStyle: GoogleFonts.inter(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                   enabledBorder: const OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                   ),
//                   focusedBorder: const OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   hintText: '********',
//                   labelStyle: GoogleFonts.inter(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                   enabledBorder: const OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                   ),
//                   focusedBorder: const OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 25),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Flexible(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         SizedBox(
//                           height: 24,
//                           width: 24,
//                           child:
//                               Checkbox(value: _isChecked, onChanged: onChanged),
//                         ),
//                         const SizedBox(width: 8),
//                         Text(
//                           'Remember me',
//                           style: GoogleFonts.inter(
//                             fontSize: 14,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 25),
//                   Flexible(
//                     child: Text(
//                       'Forgot password?',
//                       style: GoogleFonts.inter(
//                         fontSize: 14,
//                         color: const Color.fromARGB(255, 0, 84, 152),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 30),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 10,
//                   ),
//                 ),
//                 child: Text(
//                   'Login now',
//                   style: GoogleFonts.inter(
//                     fontSize: 15,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 10,
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/google.png',
//                       height: 8,
//                     ),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Continue with Google',
//                       style: GoogleFonts.inter(
//                         fontSize: 15,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void onChanged(bool? value) {
//     setState(() {
//       _isChecked = value!;
//     });
//   }
// }

// class LoginTablet extends StatefulWidget {
//   const LoginTablet({Key? key}) : super(key: key);

//   @override
//   State<LoginTablet> createState() => _LoginTabletState();
// }

// class _LoginTabletState extends State<LoginTablet> {
//   bool _isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         width: 350,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Welcome back',
//               style: GoogleFonts.inter(
//                 fontSize: 17,
//                 color: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Login to your account',
//               style: GoogleFonts.inter(
//                 fontSize: 23,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             const SizedBox(height: 35),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 hintText: 'abc@example.com',
//                 labelStyle: GoogleFonts.inter(
//                   fontSize: 14,
//                   color: Colors.black,
//                 ),
//                 enabledBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1,
//                   ),
//                 ),
//                 focusedBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: '********',
//                 labelStyle: GoogleFonts.inter(
//                   fontSize: 14,
//                   color: Colors.black,
//                 ),
//                 enabledBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1,
//                   ),
//                 ),
//                 focusedBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 25),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     SizedBox(
//                       height: 24,
//                       width: 24,
//                       child: Checkbox(value: _isChecked, onChanged: onChanged),
//                     ),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Remember me',
//                       style: GoogleFonts.inter(
//                         fontSize: 14,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 25),
//                 Text(
//                   'Forgot password?',
//                   style: GoogleFonts.inter(
//                     fontSize: 14,
//                     color: const Color.fromARGB(255, 0, 84, 152),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),
//             TextButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 20,
//                   horizontal: 10,
//                 ),
//               ),
//               child: Text(
//                 'Login now',
//                 style: GoogleFonts.inter(
//                   fontSize: 15,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 15),
//             TextButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 20,
//                   horizontal: 10,
//                 ),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/google.png',
//                     height: 10,
//                   ),
//                   const SizedBox(width: 8),
//                   Text(
//                     'Continue with Google',
//                     style: GoogleFonts.inter(
//                       fontSize: 15,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void onChanged(bool? value) {
//     setState(() {
//       _isChecked = value!;
//     });
//   }
// }

class LoginDesktop extends StatefulWidget {
  const LoginDesktop({Key? key}) : super(key: key);

  @override
  State<LoginDesktop> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded(child: Image.asset('images/home_img.png', fit: BoxFit.fill)),
        Expanded(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 21),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome back',
                  style: GoogleFonts.inter(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Login to your account',
                  style: GoogleFonts.inter(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 35),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/facebook.png',
                        height: 30,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Continue with Facebook',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    shape: const ContinuousRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/google.png',
                        height: 30,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Continue with Google',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/apple.png',
                        height: 30,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Continue with Apple',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: const Divider(
                        color: Colors.grey,
                        height: 40,
                      ),
                    )),
                    const Text(
                      "OR",
                      // style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: const Divider(
                            color: Colors.grey,
                            height: 40,
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'abc@example.com',
                    labelStyle: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: '********',
                    labelStyle: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: _isChecked,
                            onChanged: onChanged,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Remember me',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Text(
                      'Forgot password?',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 0, 84, 152),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    // TODO
                    context.read<LoginBloc>().add(
                          const LoginSuccessEvent(),
                        );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                  ),
                  child: Text(
                    'Login now',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void onChanged(bool? value) {
    setState(() {
      _isChecked = value!;
    });
  }
}

class BottomRegisterBar extends StatelessWidget {
  const BottomRegisterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: const Divider(
                color: Colors.grey,
                height: 40,
              ),
            )),
            Container(
                padding: const EdgeInsets.all(5),
                child: Text.rich(TextSpan(

                    /// Set global style for TOS line here
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                    children: [
                      const TextSpan(
                        text: "Don't have an account? ",
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.read<LoginBloc>().add(
                                const RegisterNavEvent(),
                              ),
                      ),
                    ]))),
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: const Divider(
                color: Colors.grey,
                height: 36,
              ),
            )),
          ],
        ));
  }
}

class RegisterDesktop extends StatefulWidget {
  const RegisterDesktop({Key? key}) : super(key: key);

  @override
  State<RegisterDesktop> createState() => _RegisterDesktopState();
}

class _RegisterDesktopState extends State<RegisterDesktop> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded(child: Image.asset('images/home_img.png', fit: BoxFit.fill)),
        Expanded(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 21),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Create Your Account',
                  style: GoogleFonts.inter(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Welcome to The Lending App',
                  style: GoogleFonts.inter(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 35),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/facebook.png',
                        height: 30,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Continue with Facebook',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    shape: const ContinuousRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/google.png',
                        height: 30,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Continue with Google',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/apple.png',
                        height: 30,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Continue with Apple',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: const Divider(
                        color: Colors.grey,
                        height: 40,
                      ),
                    )),
                    const Text(
                      "or, continue with email",
                      // style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: const Divider(
                            color: Colors.grey,
                            height: 40,
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 570,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          hintText: 'John',
                          labelStyle: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    SizedBox(
                      width: 570,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          hintText: 'Doe',
                          labelStyle: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'abc@example.com',
                    labelStyle: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: '********',
                    labelStyle: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void onChanged(bool? value) {
    setState(() {
      _isChecked = value!;
    });
  }
}

class BottomLoginBar extends StatelessWidget {
  const BottomLoginBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: const Divider(
                color: Colors.grey,
                height: 40,
              ),
            )),
            Container(
                padding: const EdgeInsets.all(5),
                child: Text.rich(TextSpan(

                    /// Set global style for TOS line here
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                    children: [
                      const TextSpan(
                        text: "Already have an account? ",
                      ),
                      TextSpan(
                        text: 'Log In',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.read<LoginBloc>().add(
                                const LoginNavEvent(),
                              ),
                      ),
                    ]))),
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: const Divider(
                color: Colors.grey,
                height: 36,
              ),
            )),
          ],
        ));
  }
}
