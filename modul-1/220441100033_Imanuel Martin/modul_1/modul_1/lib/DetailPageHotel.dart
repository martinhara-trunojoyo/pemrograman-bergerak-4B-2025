import 'package:flutter/material.dart';
import 'models/hotel.dart';
class DetailPageHotel extends StatelessWidget {
  final Hotel product;

  const DetailPageHotel({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.namaHotel )),
      backgroundColor: const Color.fromARGB(255, 201, 200, 200),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(product.gambar),
            SizedBox(height: 10),
            Text(product.deskripsi, style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}
