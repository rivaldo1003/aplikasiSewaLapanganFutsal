import 'package:aplikasi_penyewaan_lap_futsal/screens/beranda.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/successfix.gif'),
          ),
          Text(
            'Berhasil',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Pembayaran Anda Telah Berhasil !',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Beranda();
                }));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                margin: EdgeInsets.all(20),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff002f52),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
