import 'package:flutter/material.dart';

class DetailLapanganD extends StatefulWidget {
  const DetailLapanganD({Key? key}) : super(key: key);

  @override
  State<DetailLapanganD> createState() => _DetailLapanganAState();
}

class _DetailLapanganAState extends State<DetailLapanganD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Halaman Detail Lapangan Mitra D'),
      ),
    );
  }
}
