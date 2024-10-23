import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPackage extends StatefulWidget {
  const MyPackage({super.key});

  @override
  _MyPackageState createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  String selectedValue = 'Opsi'; // Initial value for dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Package', style: GoogleFonts.poppins()),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Masukkan username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Masukkan password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Ini adalah elevated button",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
            const SizedBox(height: 20), // Added padding between buttons
            TextButton(
              onPressed: () {},
              child: const Text(
                'Ini adalah TextButton',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 71, 128, 240),
                ),
              ),
            ),
            const SizedBox(height: 15),
            DropdownButton<String>(
              isExpanded: true,
              value: selectedValue, // Bind selected value here
              items: <String>['Opsi', 'Opsi 2', 'Opsi 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!; // Update the selected value
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
