// void main() {

// // Menggunakan var
//   var name = "Arwin Nabiel Arrofif"; // Tipe data String
//   var age = 21; // Tipe data Integer
//   print("Nama: $name, Usia: $age");
// }
// // // Type annotation
// // String name = "Bob"; // Tipe data String
// // int age = 30; // Tipe data Integer
// // print("Nama: $name, Usia: $age");

// // // Multiple variable
// // String firstName, lastName; // Tipe data String
// // firstName = "Charlie";
// // lastName = "Brown";
// // print("Nama Lengkap: $firstName $lastName");

// // var openHours = 8;
// // var closedHours = 21;
// // var now = 17;
// // if (now > openHours && now < closedHours) {
// // print("Hello, we're open");
// // } else {
// // print("Sorry, we've closed");
// // }

// // var day = 3; // Misalkan 1 = Senin, 2 = Selasa, dst.
// // switch (day) {
// // case 1:
// // print("Senin");
// // break;
// // case 2:
// // print("Selasa");
// // break;
// // case 3:
// // print("Rabu");
// // break;
// // case 4:
// // print("Kamis");
// // break;
// // case 5:
// // print("Jumat");
// // break;
// // case 6:
// // print("Sabtu");
// // break;
// // case 7:
// // print("Minggu");
// // break;
// // default:
// // print("Hari tidak valid");
// // }

// // // For loop untuk mencetak angka 1 sampai 5
// // for (int i = 1; i <= 5; i++) {
// // print(i);
// // }

// // int i = 1; // Inisialisasi variabel
// // // While loop untuk mencetak angka 1 sampai 5
// // while (i <= 5) {
// // print('Angka: $i');
// // i++; // Increment untuk menghindari loop tak berujung
// // }

// // // Membuat fixed-length list dengan panjang 3
// // List<int> fixedList = List.filled(3, 0); // List dengan 3 elemen,
// // semua diinisialisasi ke 0
// // // Mengubah elemen dalam list
// // fixedList[0] = 10;
// // fixedList[1] = 20;
// // fixedList[2] = 30;
// // print('Fixed Length List: $fixedList'); // Output: [10, 20, 0, 0, 0]
// // // Menambah atau menghapus elemen tidak diperbolehkan
// // // fixedList.add(30); // Ini akan menimbulkan error
// // // fixedList.removeAt(0); // Ini juga akan menimbulkan error

// // // Membuat growable list (panjangnya bisa berubah)
// // List<int> growableList = [];
// // // Menambahkan elemen baru ke dalam list
// // growableList.add(10);
// // growableList.add(20);
// // growableList.add(30);
// // print('Growable List setelah menambah elemen: $growableList'); //
// // Output: [10, 20, 30]
// // // Menambahkan lebih banyak elemen
// // growableList.add(40);
// // growableList.add(50);
// // print(growableList); // Output: [10, 20, 30, 40, 50]
// // // Menghapus elemen dari list
// // growableList.remove(20);
// // print('Growable List setelah menghapus elemen: $growableList'); //
// // Output: [10, 30, 40, 50]

// // // Fungsi tanpa nilai kembalian
// // void cetakPesan(String pesan) {
// // print(pesan); // Mencetak pesan
// // }
// // // Fungsi dengan nilai kembalian
// // int kaliAngka(int a, int b) {
// // return a * b; // Mengembalikan hasil perkalian
// // }
// // // Memanggil fungsi dan menyimpan hasilnya
// // int hasil = kaliAngka(4, 5);
// // // Menampilkan hasil
// // print('Hasil kali: $hasil');
// // // Memanggil fungsi tanpa nilai kembalian
// // cetakPesan('Halo, Dart!');

// // void greet(String name, int age) {
// // print('Hello $name, you are $age years old.');
// // }
// // void main() {
// // greet('Alice', 25);
// // }

// // }

void main() {
  var name = 'Arwin';
  var umur = 21;
  var namalengkap = 'Arwin Nabiel Arrofif';
  var nilai = 80;
  int i = 1;
  List<int> fixedList = List.filled(3, 0);
  String firstname = 'Arwin';
  var lastname = 'Nabiel Arrofif';

  // MENGGABUNGKAN MENGGUNAKAN CAMELCASE
  print('hai $firstname $lastname');

  // ELSE STATEMENT
  if (umur > 21) {
    print('$firstname MASIH MUDA PRODUKTIF $umur');
  } else if (umur == 15) {
    print('$firstname GERING URIP $umur');
  } else {
    print('$firstname MASIH MUDA PUYENG $umur');
  }

  // SWITCH CASE
  switch (nilai) {
    case 'a':
      print('nilai gue');
      break;
    case 'b':
      print('nilai cukup');
      break;
    case 'c':
      print('nilai baik');
      break;
    default:
      print('nilai alhamdulilah');
  }

  // While loop untuk mencetak angka 1 sampai 5
  while (i <= 5) {
    print('Angka: $i');
    i++; // Increment untuk menghindari loop tak berujung
  }

// Mengubah elemen dalam list
  fixedList[0] = 50;
  fixedList[1] = 60;
  fixedList[2] = 70;
  print('Fixed Length List: $fixedList');

  // Mengubah elemen dalam list
  fixedList[0] = 50;
  fixedList[1] = 60;
  fixedList[2] = 70;
  print('Fixed Length List: $fixedList');

  List<int> growableList = [];
// Menambahkan elemen baru ke dalam list
  growableList.add(50);
  growableList.add(60);
  growableList.add(70);
  print('Growable List setelah menambah elemen: $growableList');

// Menambahkan lebih banyak elemen
  growableList.add(80);
  growableList.add(90);
  print(growableList); // Output: [50, 60, 70, 80, 90]

// Menghapus elemen dari list
  growableList.remove(20);
  print('Growable List setelah menghapus elemen: $growableList');
}
