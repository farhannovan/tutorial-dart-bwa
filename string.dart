void main() {
  String nama = ' Farhan Novan Fauzi ';
  String daftarHewan = "Kucing, Kuda, Kambing";
  var angka = 17;

  // cek apakah mengandung string tertentu
  print(nama.contains('novan'));

  // mengubah menjadi huruf kecil
  print(nama.toLowerCase());

  // mengubah menjadi huruf besar
  print(nama.toUpperCase());

  // mengubah menjadi string
  print(angka.toString());

  // mengubah menjadi list
  print(daftarHewan.split(', ')[1]);

  // menampilkan substring
  print(nama.substring(6, 9));
  // 6 -> mulai (masuk)
  // 9 -> akhir (tidak masuk)

  // menampilkan panjang string
  print(nama.length);

  // menghilangkan spasi di depan dan di belakang
  print(nama.trim());

  // menghilangkan spasi di depan
  print(nama.trimRight());

  // menghilangkan spasi di belakang
  print(nama.trimLeft());

  // mendapatkan nilai desimal ASCII
  print(nama.codeUnitAt(1));

  // menampilkan index karakter dalam string
  print(nama.indexOf('i'));

  // mengecek apakah diawali dengan string/karakter tertentu
  print(nama.startsWith(' farhan'));

  // mengecek apakah diawali dengan string/karakter tertentu
  print(nama.endsWith('Fauzi '));

  var kosong = '';

  // cek apakah string tersebut kosong
  print(kosong.isEmpty);

  // cek apakah string tersebut tidak kosong
  print(kosong.isNotEmpty);
}
