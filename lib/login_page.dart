// import 'package:aplikasi_penyewaan_lap_futsal/register_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final _email = TextEditingController();
//   final _password = TextEditingController();
//
//   Future signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: _email.text.trim(),
//       password: _password.text.trim(),
//     );
//   }
//
//   @override
//   void dispose() {
//     _email.dispose();
//     _password.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 30),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.only(top: 20),
//                 height: 210,
//                 child: Center(
//                   child: Image(
//                     image: AssetImage('assets/images/massyouth_png.png'),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'Login Page',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 35,
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'Selamat datang di futsal Mitra Papua. Booking lapangan anda dengan mudah dan praktis !',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 25),
//                 child: TextField(
//                   controller: _email,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.email,
//                       color: Colors.deepPurple,
//                     ),
//                     hintText: 'Email',
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide(color: Colors.white),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.deepPurple),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     fillColor: Colors.grey[200],
//                     filled: true,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 25),
//                 child: TextField(
//                   controller: _password,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.key,
//                       color: Colors.deepPurple,
//                     ),
//                     hintText: 'Password',
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide(color: Colors.white),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.deepPurple),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     fillColor: Colors.grey[200],
//                     filled: true,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: GestureDetector(
//                   onTap: signIn,
//                   child: Container(
//                     padding: EdgeInsets.all(18),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       color: Colors.deepPurple,
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Sign In',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text('Not a member? '),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         Navigator.of(context).pushReplacement(
//                             MaterialPageRoute(builder: (context) {
//                           return RegisterPage();
//                         }));
//                       });
//                     },
//                     child: Text(
//                       'Register Now',
//                       style: TextStyle(color: Colors.blue),
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
