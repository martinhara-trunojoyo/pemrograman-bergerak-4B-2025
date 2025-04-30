// import 'package:flutter/material.dart';
// import 'DetailPage.dart';

// class Pantai {
//   final String namaPantai;
//   final String lokasi;
//   final String deskripsi;
//   final String gambar;

//   Pantai({
//     required this.namaPantai,
//     required this.lokasi,
//     required this.deskripsi,
//     required this.gambar,
//   });
// }

// class HomePage extends StatelessWidget {
//   final List<Pantai> pantai = [
//     Pantai(
//       namaPantai: 'Pantai Kuta',
//       lokasi: 'Bali',
//       deskripsi:
//           'Pantai Kuta adalah pantai terkenal di Bali dengan pasir putih dan ombak yang cocok untuk berselancar.',
//       gambar: 'https://cda.1001malam.com/uploads/landmarks/774505a2af8e9424f7b591f72998011db126f602.jpg',
//     ),
//     Pantai(
//       namaPantai: 'Pantai Parangtritis',
//       lokasi: 'Yogyakarta',
//       deskripsi:
//           'Pantai Parangtritis adalah pantai yang terkenal dengan keindahan sunset dan ombaknya yang besar.',
//       gambar: 'https://example.com/pantai_parangtritis.jpg',
//     ),
//     Pantai(
//       namaPantai: 'Pantai Sanur',
//       lokasi: 'Bali',
//       deskripsi:
//           'Pantai Sanur adalah pantai yang tenang dengan pemandangan matahari terbit yang indah.',
//       gambar: 'https://example.com/pantai_sanur.jpg',
//     ),
//     Pantai(
//       namaPantai: 'Pantai Tanjung Aan',
//       lokasi: 'Lombok',
//       deskripsi: 'Pantai Tanjung Aan adalah pantai dengan pasir putih dan air laut yang jernih.',
//       gambar: 'https://example.com/pantai_tanjung_aan.jpg',
//     ),
//     Pantai(
//       namaPantai: 'Pantai Pink',
//       lokasi: 'Lombok',
//       deskripsi: 'Pantai Pink adalah pantai dengan pasir berwarna pink yang sangat langka.',
//       gambar: 'https://example.com/pantai_pink.jpg',
//     ),
//     Pantai(
//       namaPantai: 'Pantai Nusa Dua',
//       lokasi: 'Bali',
//       deskripsi: 'Pantai Nusa Dua adalah pantai yang terkenal dengan resort mewah dan keindahan alamnya.',
//       gambar: 'https://example.com/pantai_nusa_dua.jpg',
//     ),
//     Pantai(
//       namaPantai: 'Pantai Anyer',
//       lokasi: 'Banten',
//       deskripsi: 'Pantai Anyer adalah pantai yang terkenal dengan keindahan sunset dan aktivitas airnya.',
//       gambar: 'https://example.com/pantai_anyer.jpg',
//     ),
//   ];

//   HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           children: pantai.map((item) {
//             return InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DetailPage(product: item),
//                   ),
//                 );
//               },
//               child: Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Expanded(
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
//                         child: Image.network(
//                           item.gambar,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(item.namaPantai,
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 14)),
//                           SizedBox(height: 4),
//                           Text(item.lokasi, style: TextStyle(color: Colors.grey[600])),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }



