import 'dart:io';

void main() async {
  int? bil1, bil2;

  try {
    stdout.write("Masukkan bilangan 1 : ");
    bil1 = int.parse(stdin.readLineSync()!);

    stdout.write("Masukkan bilangan 2 : ");
    bil2 = int.parse(stdin.readLineSync()!);

    print("Menghitung...");

    print(await hitungPenjumlahan(bil1, bil2));
    print(await hitungPengurangan(bil1, bil2));
    print(await hitungPerkalian(bil1, bil2));
    print(await hitungPembagian(bil1, bil2));
  } catch (e) {
    print(e);
  }
}

Future<String> hitungPenjumlahan(bil1, bil2) async {
  return Future.delayed(Duration(seconds: 1), () {
    var hasil = bil1 + bil2;
    return "Hasil penjumlahan $bil1 + $bil2 adalah $hasil";
  });
}

Future<String> hitungPengurangan(bil1, bil2) async {
  return Future.delayed(Duration(seconds: 1), () {
    var hasil = bil1 - bil2;
    return "Hasil pengurangan $bil1 - $bil2 adalah $hasil";
  });
}

Future<String> hitungPerkalian(bil1, bil2) async {
  return Future.delayed(Duration(seconds: 1), () {
    var hasil = bil1 * bil2;
    return "Hasil perkalian $bil1 * $bil2 adalah $hasil";
  });
}

Future<String> hitungPembagian(bil1, bil2) async {
  return Future.delayed(Duration(seconds: 1), () {
    if (bil2 != 0) {
      var hasil = bil1 / bil2;
      return "Hasil pembagian $bil1 : $bil2 adalah $hasil";
    } else {
      throw "Bilangan kedua tidak boleh 0!";
    }
  });
}
