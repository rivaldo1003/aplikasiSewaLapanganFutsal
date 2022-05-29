import 'package:aplikasi_penyewaan_lap_futsal/screens/book_now.dart';
import 'package:aplikasi_penyewaan_lap_futsal/screens/success.dart';
import 'package:flutter/material.dart';

class BayarSekarang extends StatefulWidget {
  const BayarSekarang({Key? key}) : super(key: key);

  @override
  State<BayarSekarang> createState() => _BayarSekarangState();
}

class _BayarSekarangState extends State<BayarSekarang> {
  int value = 0;
  final bayarLabel = [
    'Credit card / Debit card',
    'Cash on delivery',
    'Paypal',
    'Google wallet'
  ];

  final bayarIcon = [
    Icons.credit_card,
    Icons.money_off,
    Icons.payment,
    Icons.account_balance_wallet,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Batalkan Pesanan?'),
                    content: Container(
                      child: Text(
                          'Pesanan Anda akan dilepas jika Anda meninggalkan halaman ini, lanjutkan?'),
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Tidak'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return BookNow();
                              }));
                            },
                            child: Text('Ok'),
                          ),
                        ],
                      ),
                    ],
                  );
                });
          },
        ),
        title: Text(
          'Pembayaran',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Choose your payment \nmethod',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: bayarLabel.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: Color(0xff002f52),
                    value: index,
                    groupValue: value,
                    onChanged: (i) {
                      setState(() {
                        value = index;
                      });
                    },
                  ),
                  title: Text(
                    bayarLabel[index],
                  ),
                  trailing: Icon(bayarIcon[index]),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Success();
            }));
          });
        },
        child: Container(
          height: 50,
          width: double.infinity,
          color: Color(0xff002f52),
          child: Center(
            child: Text(
              'BAYAR',
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
