class Mahasiswa {
  String nim;
  String nama;
  int semester;

  Mahasiswa(this.nim, this.nama, this.semester);

  void tampilkanInfo() {
    print('NIM: $nim');
    print('Nama: $nama');
    print('Semester: $semester');
  }
}
