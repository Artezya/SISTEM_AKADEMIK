import 'mahasiswa.dart';
import 'mata_kuliah.dart';

class KRS {
  Mahasiswa mahasiswa;
  List<MataKuliah> daftarMataKuliah;

  KRS(this.mahasiswa) : daftarMataKuliah = [];

  void tambahMataKuliah(MataKuliah mataKuliah) {
    daftarMataKuliah.add(mataKuliah);
    print('Mata kuliah ${mataKuliah.nama} ditambahkan ke KRS ${mahasiswa.nama}');
  }

  void cetakKRS() {
    print('\nKRS ${mahasiswa.nama} (NIM: ${mahasiswa.nim}):');
    if (daftarMataKuliah.isEmpty) {
      print('Tidak ada mata kuliah yang diambil');
    } else {
      for (var mataKuliah in daftarMataKuliah) {
        print('- ${mataKuliah.nama} (${mataKuliah.sks} SKS)');
      }
    }
  }
}
