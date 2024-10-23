// listview.dart
import 'package:flutter/material.dart';

// Model data untuk tempat wisata
class TempatWisata {
  final String nama;
  final String imageUrl;
  final String deskripsi;

  TempatWisata({
    required this.nama,
    required this.imageUrl,
    required this.deskripsi,
  });
}

// Halaman yang menampilkan tempat wisata dalam bentuk ListView
class RekomendasiWisataListPage extends StatelessWidget {
  const RekomendasiWisataListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar tempat wisata di Banyumas
    final List<TempatWisata> tempatWisataList = [
      TempatWisata(
        nama: 'Curug Ceheng',
        imageUrl:
            'https://atourin.obs.ap-southeast-3.myhuaweicloud.com/images/destination/banyumas/curug-ceheng-profile1672683867.jpeg?x-image-process=image/resize,p_100,limit_1/imageslim',
        deskripsi:
            'Curug Ceheng adalah air terjun indah di Banyumas, menawarkan suasana alami dengan udara sejuk dan pemandangan hutan yang asri.',
      ),
      TempatWisata(
        nama: 'The Village Purwokerto',
        imageUrl:
            'https://img.inews.co.id/media/600/files/networks/2021/04/21/2f886_the_village.jpg',
        deskripsi:
            'The Village Purwokerto adalah taman wisata modern dengan tema arsitektur Eropa. Pengunjung dapat menikmati taman bunga dan aktivitas rekreasi.',
      ),
      TempatWisata(
        nama: 'Bukit Tranggulasih',
        imageUrl:
            'https://radarbanyumas.disway.id/upload/2018/05/Bukit-Tranggulasih.jpg',
        deskripsi:
            'Bukit Tranggulasih terkenal sebagai tempat terbaik untuk menikmati matahari terbit dan pemandangan kota Purwokerto dari ketinggian.',
      ),
      TempatWisata(
        nama: 'Taman Andhang Pangrenan',
        imageUrl:
            'https://joss.co.id/data/uploads/2024/07/taman-andhang-pangrenan-purwokerto-3.jpg',
        deskripsi:
            'Taman Andhang Pangrenan adalah taman kota yang cocok untuk rekreasi keluarga, dilengkapi dengan area bermain dan kuliner lokal.',
      ),
      TempatWisata(
        nama: 'Pancuran Pitu',
        imageUrl:
            'https://bimaputra1.wordpress.com/wp-content/uploads/2013/10/pa120400.jpg?w=584',
        deskripsi:
            'Pancuran Pitu merupakan pemandian air panas alami yang berada di Baturraden. Air panas ini dipercaya memiliki khasiat kesehatan.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Tempat Wisata Banyumas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: tempatWisataList.length,
          itemBuilder: (context, index) {
            return WisataListCard(tempatWisata: tempatWisataList[index]);
          },
        ),
      ),
    );
  }
}

// Widget untuk menampilkan tempat wisata dalam bentuk ListView card
class WisataListCard extends StatelessWidget {
  final TempatWisata tempatWisata;

  const WisataListCard({super.key, required this.tempatWisata});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              tempatWisata.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tempatWisata.nama,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  tempatWisata.deskripsi,
                  style: const TextStyle(fontSize: 16, height: 1.5),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Aksi ketika tombol ditekan, misalnya membuka detail wisata
                      },
                      icon: const Icon(Icons.place_outlined),
                      label: const Text('Kunjungi'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
