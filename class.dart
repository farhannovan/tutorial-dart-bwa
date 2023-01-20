/*
  class class_name {
    Properties (Instance Variables) (selesai)
    Constructor (selesai)
    Methods (Functions) (selesai)
    Getters and Setters
  }
*/

/*
  class RekeningBank{
    Properties
      - namaPemilik
      - namaBank
      - saldo
    Methods
      - cekSaldo()
      - transfer()
      - ambilSaldo()
  }
*/

void main() {
  RekeningBank rekeningFarhan = new RekeningBank();
  rekeningFarhan.namaPemilik = 'Farhan';
  rekeningFarhan.namaBank = 'BTA';
  rekeningFarhan.saldo = 10000000000;
  print(rekeningFarhan.namaPemilik);
  print(rekeningFarhan.namaBank);
  print(rekeningFarhan.saldo);
  rekeningFarhan.cekSaldo();
  print('---------------------');

  RekeningBank rekeningNovan = new RekeningBank(
    namaPemilik: 'Novan',
    namaBank: 'ATB',
    saldo: 5000000,
  );
  print(rekeningNovan.saldo);
  rekeningNovan.cekSaldo();
  print('---------------------');

  RekeningBank rekeningFauzi = new RekeningBank(
    namaPemilik: 'Fauzi',
    namaBank: 'TAB',
    saldo: 20000000,
  );
  print(rekeningFauzi.getPemilik);
  print(rekeningFauzi.getBank);
  print(rekeningFauzi.saldo);
  rekeningFauzi.setNamaPemilik = 'Fauzi';
  rekeningFauzi.setNamaBank = 'Bank Rakyat';
  rekeningFauzi.setSaldo = 50000000;
  print(rekeningFauzi.getPemilik);
  print(rekeningFauzi.getBank);
  print(rekeningFauzi.getSaldo);
  print('---------------------');

  RekeningBank rekeningOzy = new RekeningBank.Ozy(
    namaPemilik: 'Owo',
    saldo: 200000,
  );
  print(rekeningOzy.getBank);
}

class RekeningBank {
  String namaPemilik;
  String namaBank;
  int saldo;

  set setNamaPemilik(String nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String nama) {
    this.namaBank = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  RekeningBank({this.namaPemilik, this.namaBank, this.saldo});
  RekeningBank.Ozy({this.namaPemilik, this.namaBank = 'OWO', this.saldo});

  cekSaldo() {
    print('Saldo saat ini: $saldo');
  }

  transfer() {
    print('transfer');
  }

  ambilSaldo() {
    print('ambil saldo');
  }
}
