import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Aksi ketika tombol back ditekan
          },
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Main Content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    // Widget 1: Card dengan Foto Profil dan Nama
                    _buildProfileCard(),
                    const SizedBox(height: 30),
                    // Widget 2: Informasi Pribadi
                    _buildInfoCard(),
                    const SizedBox(height: 20),
                    // Widget 3: Kontak dengan Ikon
                    _buildContactCard(),
                    const SizedBox(height: 20),
                    // Widget 4: Tentang Saya
                    _buildAboutMeCard(),
                    const SizedBox(height: 15),
                    // Widget 5: Footer dengan Ikon yang Diperbesar
                    _buildFooter(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileCard() {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/wongelek.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            // const CircleAvatar(
            //   radius: 70,
            //   backgroundImage: AssetImage(Image.asset('assets/images/wongelek.jpg')),
            // ),
            const SizedBox(height: 15),
            const Text(
              'Arwin Nabiel Arrofif',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Pengembang Perangkat Lunak',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Tanggal Lahir',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '099 januari 1090',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Divider(),
            Text(
              'Alamat',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Perum Sapphire Residence Blok Ruby C7 Karangwangkal',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.phone, color: Colors.blueAccent),
                SizedBox(width: 10),
                Text(
                  'Nomor Telepon: +6282313086762',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.email, color: Colors.blueAccent),
                SizedBox(width: 10),
                Text(
                  'Email: gatauapa@exam.com',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutMeCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Tentang Saya',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Saya mahasiswa di Telkom University Kampus Purwokerto. '
              'Saya memiliki ketertarik dalam dunia teknologi dan inovasi, terutama dalam '
              'pengembangan aplikasi dan teknologi. Sebagai mahasiswa, saya '
              'selalu semangat mempelajari hal-hal baru dan menerapkan ilmu yang saya dapatkan '
              'dalam proyek nyata.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        const Text(
          'Terhubung dengan saya:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 232, 234, 238),
          ),
        ),
        const SizedBox(height: 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFooterIcon(Icons.phone, 'Telepon'),
            const SizedBox(width: 40), // Tambah jarak antar ikon
            _buildFooterIcon(Icons.email, 'Email'),
            const SizedBox(width: 40), // Tambah jarak antar ikon
            _buildFooterIcon(Icons.web, 'Website'),
          ],
        ),
      ],
    );
  }

  Widget _buildFooterIcon(IconData icon, String label) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            splashColor: Colors.blueAccent.withOpacity(0.2),
            onTap: () {
              // Aksi ketika ikon ditekan
            },
            child: Ink(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
