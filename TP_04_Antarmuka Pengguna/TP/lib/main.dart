import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const RekomendasiWisataPage(),
    );
  }
}

class RekomendasiWisataPage extends StatelessWidget {
  const RekomendasiWisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi Wisata'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Bandung',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 20),
              // Gambar dengan style BoxDecoration untuk menambah shadow dan border radius
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4), // Mengatur posisi shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Gedung_Sate_Bandung_Jawa_Barat.jpg/1200px-Gedung_Sate_Bandung_Jawa_Barat.jpg',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Bandung adalah kota yang dikelilingi pegunungan dengan udara sejuk, '
                  'menyuguhkan pemandangan alam yang indah dan suasana yang nyaman. '
                  'Bandung terkenal dengan wisata kuliner yang beragam, fashion yang trendi, '
                  'serta tempat wisata alam seperti Lembang dan Kawah Putih. Kota ini menjadi '
                  'destinasi favorit wisatawan untuk berlibur, baik untuk menikmati keindahan alam '
                  'maupun mengeksplorasi budaya lokal yang kaya.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  // Aksi yang diinginkan ketika tombol ditekan
                },
                icon: const Icon(Icons.place_outlined),
                label: const Text('Kunjungi Tempat'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 12.0,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
