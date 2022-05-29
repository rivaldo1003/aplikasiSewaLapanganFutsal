import 'package:flutter/material.dart';

class DetailLapanganC extends StatefulWidget {
  const DetailLapanganC({Key? key}) : super(key: key);

  @override
  State<DetailLapanganC> createState() => _DetailLapanganCState();
}

class _DetailLapanganCState extends State<DetailLapanganC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Ini Halaman Lap C'),
      ),
    );
  }
}
