import 'package:aplikasi_penyewaan_lap_futsal/screens/beranda.dart';
import 'package:flutter/material.dart';

class HalamanSemuaLapangan extends StatefulWidget {
  const HalamanSemuaLapangan({Key? key}) : super(key: key);

  @override
  State<HalamanSemuaLapangan> createState() => _HalamanSemuaLapanganState();
}

class _HalamanSemuaLapanganState extends State<HalamanSemuaLapangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Beranda();
            }));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Lapangan Futsal',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            buildContainer(
              title: 'LAPANGAN MITRA (A)',
              jenis: 'Fiber',
              nilai: '9.5',
              rating: Icon(Icons.star),
            ),
            buildContainer(
              title: 'LAPANGAN MITRA (B)',
              jenis: 'Sintetis',
              nilai: '9.5',
              rating: Icon(Icons.star),
            ),
            buildContainer(
              title: 'LAPANGAN MITRA (C)',
              jenis: 'Fiber',
              nilai: '9.5',
              rating: Icon(Icons.star),
            ),
            buildContainer(
              title: 'LAPANGAN MITRA (D)',
              jenis: 'Sintetis',
              nilai: '9.5',
              rating: Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }
}

class buildContainer extends StatelessWidget {
  final String title;
  final String jenis;
  final String nilai;
  final Widget rating;

  const buildContainer(
      {Key? key,
      required this.title,
      required this.jenis,
      required this.nilai,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        // color: Colors.red,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(18),
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/lapfutsal.jpg'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        jenis,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        nilai,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      buildStars(),
                      buildStars(),
                      buildStars(),
                      buildStars(),
                      buildStars(),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 28,
                    width: 80,
                    child: Center(
                      child: Text(
                        'Pesan',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff002f52),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class buildStars extends StatelessWidget {
  const buildStars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.amber,
      size: 20,
    );
  }
}
