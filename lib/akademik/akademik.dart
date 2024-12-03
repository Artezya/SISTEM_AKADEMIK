import 'mahasiswa.dart';
import 'mata_kuliah.dart';

class Akademik {
  List<Mahasiswa> daftarMahasiswa;
  List<MataKuliah> daftarMataKuliah;

  Akademik() : daftarMahasiswa = [], daftarMataKuliah = [];

  void tambahMahasiswa(Mahasiswa mahasiswa) {
    daftarMahasiswa.add(mahasiswa);
    print('Mahasiswa ${mahasiswa.nama} ditambahkan');
  }

  void tambahMataKuliah(MataKuliah mataKuliah) {
    daftarMataKuliah.add(mataKuliah);
    print('Mata kuliah ${mataKuliah.nama} ditambahkan');
  }
}
