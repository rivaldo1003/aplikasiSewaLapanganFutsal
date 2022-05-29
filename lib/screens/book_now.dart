import 'package:aplikasi_penyewaan_lap_futsal/screens/bayar_sekarang.dart';
import 'package:aplikasi_penyewaan_lap_futsal/screens/detail_lapangan_A.dart';
import 'package:flutter/material.dart';

class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MITRA FUTSAL',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailLapanganA();
            }));
          },
        ),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: IntrinsicHeight(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.access_time_outlined,
                    size: 35,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Tanggal dan \n Jam Order : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text('28 Mei, '),
                  VerticalDivider(
                    width: 10,
                    thickness: 1,
                    color: Colors.grey,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('13.31 WIB'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Detail Transaksi : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      height: 20,
                      thickness: 1,
                      indent: 0,
                      endIndent: 220,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildDataPesanan(
                          title: 'Lapangan  :',
                          subtitle: ' Mitra Futsal A',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        buildDataPesanan(
                          title: 'Jenis          :',
                          subtitle: ' Fiber',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        buildDataPesanan(
                          title: 'Harga         :',
                          subtitle: ' 50.000 / Jam',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        buildDataPesanan(
                          title: 'Durasi        :',
                          subtitle: ' 1 Jam',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Jadwal Booking : ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                          indent: 0,
                          endIndent: 220,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        buildDataPesanan(
                          title: 'Hari/Tanggal  :',
                          subtitle: ' Sabtu, 28 Mei 2022',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        buildDataPesanan(
                          title: 'Waktu              :',
                          subtitle: ' 08.00 - 09.00',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return BayarSekarang();
            }));
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Colors.grey),
            ),
          ),
          height: 100,
          width: double.infinity,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'TOTAL HARGA',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Rp50.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 38,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  width: 10,
                  thickness: 1,
                  color: Colors.grey,
                  indent: 20,
                  endIndent: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'PEMBAYARAN',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.payments_outlined,
                              color: Colors.amber,
                            ),
                            Text(
                              'BAYAR \nSEKARANG',
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff002f52),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class buildDataPesanan extends StatelessWidget {
  final String title;
  final String subtitle;

  buildDataPesanan({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
