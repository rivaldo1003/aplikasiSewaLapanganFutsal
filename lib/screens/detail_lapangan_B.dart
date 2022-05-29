import 'package:flutter/material.dart';

class DetailLapanganB extends StatefulWidget {
  const DetailLapanganB({Key? key}) : super(key: key);

  @override
  State<DetailLapanganB> createState() => _DetailLapanganBState();
}

class _DetailLapanganBState extends State<DetailLapanganB> {
  bool pressAttention = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: new Text('Attention'),
          textColor: Colors.white,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          color: pressAttention ? Colors.grey : Colors.blue,
          onPressed: () => setState(() => pressAttention = !pressAttention),
        ),
      ),
    );
  }
}
