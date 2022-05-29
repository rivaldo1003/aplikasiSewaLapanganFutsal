import 'package:aplikasi_penyewaan_lap_futsal/screens/detail_lapanganC.dart';
import 'package:aplikasi_penyewaan_lap_futsal/screens/detail_lapanganD.dart';
import 'package:aplikasi_penyewaan_lap_futsal/screens/detail_lapangan_A.dart';
import 'package:aplikasi_penyewaan_lap_futsal/screens/semua_lapangan.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'detail_lapangan_B.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final List<String> imgList = [
    'https://blogpictures.99.co/Lapangan-Futsal-Vinyl-jaringfutsalpngaman.com_.jpg',
    'https://activemovement.net/wp-content/uploads/2019/12/ARI-MEI.jpeg',
    'https://i2.wp.com/smanasionalmalang.sch.id/wp-content/uploads/2020/01/IMG_20200126_104605.jpg?resize=1024%2C576&ssl=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgXKi1d48TuEUNDHzr7gbsHlGgebh4mOtWNV27WwslRXxk3lxdq51mlIA75lmmNJ5sOks&usqp=CAU',
    'https://lapanganfutsal.id/wp-content/uploads/2017/09/g-sport-lapangan-futsal-padang.jpg',
    'https://www.indosport.com/views/1/images/tifosi/tifosi_2.jpg'
  ];

  Widget cardLapangan(String img, String title, String price) {
    return Container(
      width: 160,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(img),
            ListTile(
              title: Text(title),
              subtitle: Text(price),
            ),
          ],
        ),
      ),
    );
  }

  int _pilihIndex = 0;

  void _UbahPilihIndex(int index) {
    setState(() {
      _pilihIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        elevation: 0,
        title: Text(
          'MITRA FUTSAL SURABAYA',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.person_pin,
          size: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              color: Colors.grey.shade500,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'SURABAYA',
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(item,
                                          fit: BoxFit.cover, width: 1000.0),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                          // child: Text(
                                          //   'No. ${imgList.indexOf(item)} image',
                                          //   style: TextStyle(
                                          //     color: Colors.white,
                                          //     fontSize: 20.0,
                                          //     fontWeight: FontWeight.bold,
                                          //   ),
                                          // ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ))
                      .toList()),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Lapangan Futsal',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(
                  //   width: 116,
                  // ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return HalamanSemuaLapangan();
                        }));
                      });
                    },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Text('Semua'),
                          Icon(
                            (Icons.keyboard_arrow_right_outlined),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DetailLapanganA();
                        }));
                      });
                    },
                    child: cardLapangan(
                      'assets/images/massyouth_png.png',
                      'Lap. Mitra A',
                      'Rp. 50.000 / Jam',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DetailLapanganB();
                        }));
                      });
                    },
                    child: cardLapangan(
                      'assets/images/massyouth_png.png',
                      'Lap. Mitra B',
                      'Rp. 50.000 / Jam',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DetailLapanganC();
                        }));
                      });
                    },
                    child: cardLapangan(
                      'assets/images/massyouth_png.png',
                      'Lap. Mitra C',
                      'Rp. 50.000 / Jam',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DetailLapanganD();
                        }));
                      });
                    },
                    child: cardLapangan(
                      'assets/images/massyouth_png.png',
                      'Lap. Mitra D',
                      'Rp. 50.000 / Jam',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.blue,
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_sharp),
            label: 'Lapangan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Order',
          ),
        ],
        currentIndex: _pilihIndex,
        selectedItemColor: Colors.red.shade900,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        onTap: _UbahPilihIndex,
      ),
    );
  }
}
