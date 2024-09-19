import 'dart:io';
// Kelas untuk Mata Kuliah
class MataKuliah {
  String nama;
  int sks;
  String nilai;
  MataKuliah(this.nama, this.sks, this.nilai);
  // Mengubah nilai huruf menjadi angka
  double getNilaiAngka() {
    switch (nilai.toUpperCase()) {
      case 'A':
        return 4.0;
      case 'B':
        return 3.0;
      case 'C':
        return 2.0;
      case 'D':
        return 1.0;
      case 'E':
        return 0.0;
      default:
        return 0.0;
    }
  }
}
// Kelas untuk Semester
class Semester {
  List<MataKuliah> mataKuliahs = [];
  // Menambah Mata Kuliah ke dalam semester
  void tambahMataKuliah(MataKuliah mk) {
    mataKuliahs.add(mk);
  }
  // Menghitung total Nilai Rata-rata (NR) dalam satu semester
  double hitungNR() {
    double totalNilai = 0;
    int totalSKS = 0;
    for (var mk in mataKuliahs) {
      totalNilai += mk.getNilaiAngka() * mk.sks;
      totalSKS += mk.sks;
    }
    return totalNilai / totalSKS;
  }
  // Menghitung total SKS dalam semester
  int totalSKS() {
    int total = 0;
    for (var mk in mataKuliahs) {
      total += mk.sks;
    }
    return total;
  }
}
void main() {
  List<Semester> semesters = [];
  print("=======================================");
  print("|   Selamat datang di Kalkulator IPK   |");
  print("=======================================");
  stdout.write("Masukkan jumlah semester (2-14): ");
  int jumlahSemester = int.parse(stdin.readLineSync()!);
  // Validasi jumlah semester
  if (jumlahSemester < 2 || jumlahSemester > 14) {
    print("Jumlah semester harus antara 2 hingga 14.");
    return;
  }
  // Input data untuk tiap semester
  for (int i = 0; i < jumlahSemester; i++) {
    Semester semester = Semester();
    print("\n---------------------------------------");
    print("|          Semester ${i + 1}              |");
    print("---------------------------------------");
    stdout.write("Masukkan jumlah mata kuliah: ");
    int jumlahMK = int.parse(stdin.readLineSync()!);
    // Input data untuk tiap mata kuliah
    for (int j = 0; j < jumlahMK; j++) {
      stdout.write("Nama Mata Kuliah ke-${j + 1}: ");
      String namaMK = stdin.readLineSync()!;
      stdout.write("Jumlah SKS Mata Kuliah ke-${j + 1}: ");
      int sksMK = int.parse(stdin.readLineSync()!);
      stdout.write("Nilai Mata Kuliah ke-${j + 1} (A/B/C/D/E): ");
      String nilaiMK = stdin.readLineSync()!;
      MataKuliah mk = MataKuliah(namaMK, sksMK, nilaiMK);
      semester.tambahMataKuliah(mk);
    }
    semesters.add(semester);
  }
  // Perhitungan IPK
  double totalNilai = 0;
  int totalSKS = 0;
  for (var semester in semesters) {
    totalNilai += semester.hitungNR() * semester.totalSKS();
    totalSKS += semester.totalSKS();
  }
  double ipk = totalNilai / totalSKS;
  // Menampilkan hasil IPK dengan tampilan yang lebih rapi
  print("\n=======================================");
  print("|        Hasil Perhitungan IPK          |");
  print("=========================================");
  for (int i = 0; i < jumlahSemester; i++) {
    print(
        "| Semester ${i + 1} : NR = ${semesters[i].hitungNR().toStringAsFixed(2)} | Total SKS = ${semesters[i].totalSKS()}");
  }
  print("---------------------------------------");
  print("| Total SKS: $totalSKS                          |");
  print("| IPK Anda: ${ipk.toStringAsFixed(2)}                     |");
  print("=======================================");
}