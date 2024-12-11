import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan14/view/detail_page.dart';
import 'package:pertemuan14/view/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Notes App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()), // Halaman utama
        GetPage(
            name: '/add', page: () => AddNotePage()), // Halaman tambah catatan
      ],
    );
  }
}
