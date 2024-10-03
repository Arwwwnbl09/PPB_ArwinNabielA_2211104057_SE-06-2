// // // Fungsi untuk menentukan kategori nilai berdasarkan input
// // String tentukanNilai(int nilai) {
// //   if (nilai > 70) {
// //     return "Nilai A";
// //   } else if (nilai > 40 && nilai <= 70) {
// //     return "Nilai B";
// //   } else if (nilai > 0 && nilai <= 40) {
// //     return "Nilai C";
// //   } else {
// //     return ""; // Mengembalikan string kosong jika tidak memenuhi kondisi
// //   }
// // }

// // void main() {
// //   // Contoh nilai yang akan diuji, misalnya 80 dan 50.
// //   int nilai1 = 80;
// //   int nilai2 = 50;
// //   int nilai3 = 30;
// //   int nilai4 = -5;

// //   // Menampilkan hasil untuk nilai-nilai yang diuji
// //   print("$nilai1 merupakan ${tentukanNilai(nilai1)}");
// //   print("$nilai2 merupakan ${tentukanNilai(nilai2)}");
// //   print("$nilai3 merupakan ${tentukanNilai(nilai3)}");
// //   print("$nilai4 merupakan ${tentukanNilai(nilai4)}");
// // }

// void main() {
//   // Panjang piramida lebih besar, misalnya 10
//   int panjangPiramida = 10;

//   // Loop untuk membuat piramida bintang
//   for (int i = 1; i <= panjangPiramida; i++) {
//     // Menampilkan spasi di sebelah kiri agar bintang membentuk piramida
//     String spasi = ' ' * (panjangPiramida - i);

//     // Membentuk pola bintang
//     String bintang = '*' * (2 * i - 1);

//     // Menampilkan satu baris piramida
//     print(spasi + bintang);
//   }
// }

// Fungsi untuk memeriksa apakah bilangan merupakan bilangan prima
bool cekBilanganPrima(int bilangan) {
  if (bilangan <= 1) {
    return false; // Bilangan kurang dari atau sama dengan 1 bukan prima
  }
  for (int i = 2; i <= bilangan ~/ 2; i++) {
    if (bilangan % i == 0) {
      return false; // Jika bilangan habis dibagi, maka bukan prima
    }
  }
  return true; // Jika tidak ada yang habis dibagi, maka prima
}

void main() {
  // Simulasi input dari user
  int bilangan = 23; // Ubah angka ini untuk menguji nilai lainnya

  // Memanggil fungsi cekBilanganPrima dan mencetak hasilnya
  if (cekBilanganPrima(bilangan)) {
    print("$bilangan merupakan bilangan prima.");
  } else {
    print("$bilangan bukan bilangan prima.");
  }

  // Tes dengan beberapa contoh nilai
  int bilanganLain = 12;
  if (cekBilanganPrima(bilanganLain)) {
    print("$bilanganLain merupakan bilangan prima.");
  } else {
    print("$bilanganLain bukan bilangan prima.");
  }
}
