import 'package:flutter/material.dart';
import 'package:aplikasi_1/list.dart';
import 'package:aplikasi_1/menu.dart';

class Detail extends StatelessWidget {
  final AniModel aniItem; // Changed from itemSport to aniItem
  const Detail({
    Key? key, // Added missing Key? key parameter
    required this.aniItem, // Changed itemSport to aniItem
  }) : super(key: key); // Added super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Anipedia", // Changed from Sportspedia to Anipedia
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Container(
              height: 25,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                aniItem.image, // Changed from itemSport.image to aniItem.image
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      aniItem.nama, // Changed from itemSport.nama to aniItem.nama
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      aniItem.tanggal, // Changed from itemSport.tanggal to aniItem.tanggal
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: Text(
                aniItem.keterangan, // Changed from itemSport.keterangan to aniItem.keterangan
                style: const TextStyle(
                  fontSize: 15,
                ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MenuPage(),
            ),
          );
        },
        tooltip: 'Kembali',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
