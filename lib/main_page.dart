// import 'package:aplikasi_penyewaan_lap_futsal/home_page.dart';
// import 'package:aplikasi_penyewaan_lap_futsal/login_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class MainPage extends StatefulWidget {
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return HomePage();
//             } else {
//               return LoginPage();
//             }
//           }),
//     );
//   }
// }
