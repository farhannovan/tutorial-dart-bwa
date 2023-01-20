void main() {
  /*
    Challenge 5
    1. Buatlah class E-Wallet dengan ketentuan sebagai berikut:
      # Properties:
        - namaPemilik
        - saldo
        - mutasi
      # Methods:
        - Getters dan Setters untuk setiap properties
        - transfer() // dari rekening pemilik
        - request() // ke rekening pemilik
  */

  EWallet dompetFarhan = new EWallet('Rifqi Eka Hardianto');
  print('Nilai Awal');
  print(dompetFarhan.getNama);
  print(dompetFarhan.getSaldo);
  print(dompetFarhan.getMutasi);
  print('Request');
  dompetFarhan.request(2000000);
  print(dompetFarhan.getSaldo);
  print(dompetFarhan.getMutasi);
  print('Transfer');
  dompetFarhan.transfer(500000);
  print(dompetFarhan.getSaldo);
  print(dompetFarhan.getMutasi);
}

class EWallet {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];

  get getNama {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNama(String nama) {
    this.namaPemilik = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  set setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  EWallet(this.namaPemilik);

  transfer(int nominal) {
    saldo = saldo - nominal;
    addMutasi('Transfer $nominal');
  }

  request(int nominal) {
    saldo = saldo + nominal;
    addMutasi('Request $nominal');
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}
