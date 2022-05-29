// import 'package:aplikasi_penyewaan_lap_futsal/login_page.dart';
// import 'package:flutter/material.dart';
//
// class RegisterPage extends StatefulWidget {
//   const RegisterPage({Key? key}) : super(key: key);
//
//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }
//
// class _RegisterPageState extends State<RegisterPage> {
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
//                 'Register Page',
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
//                 child: Container(
//                   padding: EdgeInsets.all(18),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     color: Colors.deepPurple,
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Sign In',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text('Sudah punya akun? '),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         Navigator.of(context).pushReplacement(
//                             MaterialPageRoute(builder: (context) {
//                           return LoginPage();
//                         }));
//                       });
//                     },
//                     child: Text(
//                       'Login Now',
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
