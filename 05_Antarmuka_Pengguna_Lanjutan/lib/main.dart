// main.dart
import 'package:flutter/material.dart';
import 'listview.dart'; // Import listview.dart yang berisi RekomendasiWisataListPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Purwokerto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
        title: const Text('Rekomendasi Wisata Purwokerto'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Purwokerto',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://media.suara.com/pictures/653x366/2022/04/26/48527-jalan-baru-purwokerto.jpg',
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
                  'Purwokerto, sebuah kota yang terletak di Jawa Tengah, dikenal '
                  'sebagai kota wisata dan pusat pendidikan. Kota ini menawarkan '
                  'beragam tempat wisata alam seperti Baturraden, Curug Cipendok, '
                  'dan Telaga Sunyi. Selain itu, Purwokerto juga memiliki pusat '
                  'keramaian di Alun-Alun Purwokerto serta taman modern seperti '
                  'Taman Andhang Pangrenan. Beragam kuliner lokal dan suasana kota '
                  'yang nyaman menjadikan Purwokerto destinasi favorit untuk wisatawan.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  // Navigasi ke halaman ListView yang ada di listview.dart
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RekomendasiWisataListPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.place_outlined),
                label: const Text('Lihat Rekomendasi Tempat'),
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
