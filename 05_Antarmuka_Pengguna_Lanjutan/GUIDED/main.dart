import 'package:flutter/material.dart';
import 'package:pertemuan5/custom.dart';
import 'package:pertemuan5/flexible_expanded.dart';
import 'package:pertemuan5/jenis_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Custom()
        // FlexibleExpanded(),
        // JenisListView(),
        );
  }
}
