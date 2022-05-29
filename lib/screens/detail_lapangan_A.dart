import 'package:aplikasi_penyewaan_lap_futsal/screens/beranda.dart';
import 'package:aplikasi_penyewaan_lap_futsal/screens/book_now.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailLapanganA extends StatefulWidget {
  const DetailLapanganA({Key? key}) : super(key: key);

  @override
  State<DetailLapanganA> createState() => _DetailLapanganAState();
}

class _DetailLapanganAState extends State<DetailLapanganA> {
  bool isPressed = false;
  int index = 0;
  List<Color> myColor = [
    Colors.grey,
    Colors.blue,
  ];

  void pilihIndex(int index) {
    setState(() {
      index = index;
    });
  }

  Widget buildTime(String time) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          time,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Beranda();
                                }));
                              });
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width / 1,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/lapfutsal.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 240, right: 0, bottom: 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Positioned(
                      top: 300,
                      left: 25,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 4.2,
                                width: MediaQuery.of(context).size.width / 3.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/lapfutsal.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 30,
                                  top: 50,
                                  right: 0,
                                  bottom: 20,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'LAPANGAN MITRA \nFUTSAL (A)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Harga',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          '50.000 / Jam',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Jenis',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 55,
                                        ),
                                        Text(
                                          'Fiber',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Divider(
                    height: 2,
                    thickness: 0.5,
                    color: Colors.grey,
                    indent: 0,
                    endIndent: 0,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    '9.6',
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.amber,
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '150 Vote',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_outlined,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 5,
                          thickness: 1,
                          color: Colors.grey,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                    size: 32,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'BOOKLIST',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '29 Orang',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: 35,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'JADWAL BOOKING',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Pilih Tanggal',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildContainerTanggal(),
                        SizedBox(
                          width: 10,
                        ),
                        buildContainerTanggal(),
                        SizedBox(
                          width: 10,
                        ),
                        buildContainerTanggal(),
                        SizedBox(
                          width: 10,
                        ),
                        buildContainerTanggal(),
                        SizedBox(
                          width: 10,
                        ),
                        buildContainerTanggal(),
                        SizedBox(
                          width: 10,
                        ),
                        buildContainerTanggal(),
                        SizedBox(
                          width: 10,
                        ),
                        buildContainerTanggal(),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_time_outlined,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Pilih Waktu',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: buildTime('08.00'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        buildTime('14.00'),
                        SizedBox(
                          width: 10,
                        ),
                        buildTime('16.00'),
                        SizedBox(
                          width: 10,
                        ),
                        buildTime('18.00'),
                        SizedBox(
                          width: 10,
                        ),
                        buildTime('20.00'),
                        SizedBox(
                          width: 10,
                        ),
                        buildTime('20.00'),
                        SizedBox(
                          width: 10,
                        ),
                        buildTime('20.00'),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.hourglass_bottom,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Pilih Durasi',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: buildTime('1 Jam'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        buildTime('2 Jam'),
                        SizedBox(
                          width: 10,
                        ),
                        buildTime('3 Jam'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return BookNow();
            }));
          });
        },
        child: Container(
          height: 50,
          width: double.infinity,
          color: Color(0xff002f52),
          child: Center(
            child: Text(
              'BOOK NOW',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class buildContainerTanggal extends StatelessWidget {
  const buildContainerTanggal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.transparent,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '30 Mei',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Text(
              'SEN',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
