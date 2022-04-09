// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget kontener() {
      return Container(
        padding: EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 19,
          right: 12,
        ),
        margin: EdgeInsets.only(top: 15, bottom: 5, right: 18, left: 18),
        decoration: BoxDecoration(
            color: Colors.redAccent, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              children: [
                Text('NPM', style: TextStyle(fontFamily: "Poppins")),
                SizedBox(
                  width: 195,
                ),
                Text('065119155', style: TextStyle(fontFamily: "Poppins")),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.copy,
                  size: 15,
                  color: Colors.white,
                )
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Status Keaktifan'),
                SizedBox(
                  width: 195,
                ),
                Text('Aktif')
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Program Studi'),
                SizedBox(
                  width: 140,
                ),
                Text('Ilmu Komputer')
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Jenjang pendidikan'),
                SizedBox(
                  width: 186,
                ),
                Text('S1')
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
          ],
        ),
      );
    }

    Widget teks(String tulis, String baca) {
      return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(tulis),
            Text(baca),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                //SizedBox(width: 5),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("images/pp.jpg"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Mochamad Arifin J.S',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'arifin.065119155@unpak.ac.id',
                  style: TextStyle(fontFamily: "Poppins"),
                ),
                Text('082124375372', style: TextStyle(fontFamily: "Poppins"))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            kontener(),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                teks('Nama Lengkap', 'Mochamad Arifin J.S'),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                teks('Panggilan', 'Arifin'),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Alamat'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          'Kp.Cinangka RT003/002 Ds. Cipayung Girang \nKec. Megamendung Kab. Bogor Jawa Barat'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      teks('Kartu Mahasiswa', ''),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.badge,
                            size: 18,
                          )),
                    ],
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
