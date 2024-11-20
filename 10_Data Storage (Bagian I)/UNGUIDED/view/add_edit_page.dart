import 'package:flutter/material.dart';
import 'package:laprak_10/helper/db_helper.dart';

class AddEditPage extends StatefulWidget {
  final Map<String, dynamic>? data; // Data untuk edit, null jika tambah
  final VoidCallback onDataSaved;

  const AddEditPage({super.key, this.data, required this.onDataSaved});

  @override
  State<AddEditPage> createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _hobiController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      _namaController.text = widget.data!['nama'];
      _nimController.text = widget.data!['nim'];
      _alamatController.text = widget.data!['alamat'];
      _hobiController.text = widget.data!['hobi'];
    }
  }

  void _saveData() async {
    if (_namaController.text.isNotEmpty &&
        _nimController.text.isNotEmpty &&
        _alamatController.text.isNotEmpty &&
        _hobiController.text.isNotEmpty) {
      final data = {
        'nama': _namaController.text,
        'nim': _nimController.text,
        'alamat': _alamatController.text,
        'hobi': _hobiController.text,
      };

      if (widget.data == null) {
        // Tambah data
        await dbHelper.insert(data);
      } else {
        // Edit data
        data['id'] = widget.data!['id'];
        await dbHelper.update(data);
      }

      widget.onDataSaved(); // Memperbarui halaman utama
      Navigator.of(context).pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Semua field harus diisi!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data == null ? 'Tambah Data' : 'Edit Data'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _nimController,
              decoration: const InputDecoration(
                labelText: 'NIM',
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _alamatController,
              decoration: const InputDecoration(
                labelText: 'Alamat',
                prefixIcon: Icon(Icons.home),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _hobiController,
              decoration: const InputDecoration(
                labelText: 'Hobi',
                prefixIcon: Icon(Icons.favorite),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveData,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
