import 'mata_kuliah.dart';

class Nilai {
  MataKuliah mataKuliah;
  double nilai;

  Nilai(this.mataKuliah, this.nilai);
}

class TranskripNilai {
  List<Nilai> daftarNilai;

  TranskripNilai() : daftarNilai = [];

  void inputNilai(MataKuliah mataKuliah, double nilai) {
    daftarNilai.add(Nilai(mataKuliah, nilai));
    print('Nilai ${mataKuliah.nama} diinput dengan nilai $nilai');
  }

  double hitungIPK() {
    if (daftarNilai.isEmpty) return 0.0;

    double totalNilai = 0;
    int totalSKS = 0;

    for (var nilai in daftarNilai) {
      totalNilai += nilai.nilai * nilai.mataKuliah.sks;
      totalSKS += nilai.mataKuliah.sks;
    }

    return totalNilai / totalSKS;
  }

  void cetakTranskrip() {
    print('\nTranskrip Nilai:');
    for (var nilai in daftarNilai) {
      print('- ${nilai.mataKuliah.nama} (${nilai.mataKuliah.sks} SKS): ${nilai.nilai}');
    }
    print('IPK: ${hitungIPK().toStringAsFixed(2)}');
  }
}
