import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_1/data/DataPantai.dart';
import 'package:modul_1/models/pantai.dart';

class AddDataPage extends StatefulWidget {
  const AddDataPage({Key? key}) : super(key: key);

  @override
  _AddDataPageState createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for text fields
  final _namaPantaiController = TextEditingController();
  final _lokasiController = TextEditingController();
  final _deskripsiController = TextEditingController();
  final _gambarController = TextEditingController();
  final _hargaController = TextEditingController();
  final _ratingController = TextEditingController();

  @override
  void dispose() {
    _namaPantaiController.dispose();
    _lokasiController.dispose();
    _deskripsiController.dispose();
    _gambarController.dispose();
    _hargaController.dispose();
    _ratingController.dispose();
    super.dispose();
  }

  void _saveData() {
    if (_formKey.currentState!.validate()) {
      // Create a new Pantai object
      final newPantai = Pantai(
        namaPantai: _namaPantaiController.text,
        lokasi: _lokasiController.text,
        deskripsi: _deskripsiController.text,
        gambar: _gambarController.text,
        harga: int.parse(_hargaController.text),
        rating: double.parse(_ratingController.text),
      );

      // Add to dataPantai list
      dataPantai.add(newPantai);

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Data berhasil ditambahkan')),
      );

      // Navigate back to the home page
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Data Pantai',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Nama Pantai
                TextFormField(
                  controller: _namaPantaiController,
                  decoration: InputDecoration(
                    labelText: 'Nama Pantai',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.beach_access),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama pantai harus diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Lokasi
                TextFormField(
                  controller: _lokasiController,
                  decoration: InputDecoration(
                    labelText: 'Lokasi',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.location_on),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lokasi harus diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Deskripsi
                TextFormField(
                  controller: _deskripsiController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Deskripsi',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: Icon(Icons.description),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Deskripsi harus diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // URL Gambar
                TextFormField(
                  controller: _gambarController,
                  decoration: InputDecoration(
                    labelText: 'URL Gambar',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.image),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'URL gambar harus diisi';
                    }
                    if (!Uri.tryParse(value)!.isAbsolute) {
                      return 'URL tidak valid';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Harga
                TextFormField(
                  controller: _hargaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Harga (Rp)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Harga harus diisi';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Harga harus berupa angka';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Rating
                TextFormField(
                  controller: _ratingController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    labelText: 'Rating (1-5)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.star),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Rating harus diisi';
                    }
                    final rating = double.tryParse(value);
                    if (rating == null) {
                      return 'Rating harus berupa angka';
                    }
                    if (rating < 1 || rating > 5) {
                      return 'Rating harus antara 1 dan 5';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // Submit Button
                ElevatedButton(
                  onPressed: _saveData,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Simpan Data',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
