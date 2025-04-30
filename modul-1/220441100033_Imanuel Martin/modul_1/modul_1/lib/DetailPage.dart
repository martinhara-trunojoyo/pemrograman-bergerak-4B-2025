import 'package:flutter/material.dart';
import 'models/pantai.dart';
class DetailPage extends StatelessWidget {
  final Pantai product;

  const DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.namaPantai )),
      backgroundColor: const Color.fromARGB(255, 201, 200, 200),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(product.gambar),
            SizedBox(height: 10),
            Text(product.deskripsi, style: TextStyle(fontSize: 16),textAlign: TextAlign.justify),
          ],
        ),
      ),
    );
  }
}
