import '../lib/akademik/akademik.dart';
import '../lib/akademik/mahasiswa.dart';
import '../lib/akademik/mata_kuliah.dart';
import '../lib/akademik/krs.dart';
import '../lib/akademik/nilai.dart';

void main() {
  var akademik = Akademik();

  // Tambah Mahasiswa
  var mahasiswa1 = Mahasiswa('230103143', 'Hanif', 3);
  akademik.tambahMahasiswa(mahasiswa1);

  // Tambah Mata Kuliah
  var matkul1 = MataKuliah('IF101', 'Pemrograman Berorientasi Object', 3);
  var matkul2 = MataKuliah('IF102', 'Basis Data', 3);
  var matkul3 = MataKuliah('IF103', 'Pemograman Web 2', 3);
  var matkul4 = MataKuliah('IF104', 'Statistika', 3);
  var matkul5 = MataKuliah('IF105', 'Bahasa Inggris', 2);
  var matkul6 = MataKuliah('IF106', 'Matematika Diskrit', 3);
  var matkul7 = MataKuliah('IF107', 'Kewirausahaan', 3);
  var matkul8 = MataKuliah('IF108', 'Rekayasa Perangkat Lunak', 3);
  akademik.tambahMataKuliah(matkul1);
  akademik.tambahMataKuliah(matkul2);
  akademik.tambahMataKuliah(matkul3);
  akademik.tambahMataKuliah(matkul4);
  akademik.tambahMataKuliah(matkul5);
  akademik.tambahMataKuliah(matkul6);
  akademik.tambahMataKuliah(matkul7);
  akademik.tambahMataKuliah(matkul8);

  // Buat KRS
  var krs = KRS(mahasiswa1);
  krs.tambahMataKuliah(matkul1);
  krs.tambahMataKuliah(matkul2);
  krs.tambahMataKuliah(matkul3);
  krs.tambahMataKuliah(matkul4);
  krs.tambahMataKuliah(matkul5);
  krs.tambahMataKuliah(matkul6);
  krs.tambahMataKuliah(matkul7);
  krs.tambahMataKuliah(matkul8);
  krs.cetakKRS();

  // Input Nilai
  var transkrip = TranskripNilai();
  transkrip.inputNilai(matkul1, 3.7);
  transkrip.inputNilai(matkul2, 3.5);
  transkrip.inputNilai(matkul3, 3.4);
  transkrip.inputNilai(matkul4, 3.6);
  transkrip.inputNilai(matkul5, 3.3);
  transkrip.inputNilai(matkul6, 3.2);
  transkrip.inputNilai(matkul7, 3.8);
  transkrip.inputNilai(matkul8, 3.7);


  // Cetak Transkrip
  transkrip.cetakTranskrip();
}
