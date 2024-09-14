void main() {
  // Fungsi untuk memeriksa apakah sebuah angka adalah bilangan prima
  bool isPrime(int number) {
    if (number <= 1) return false; // Angka <= 1 bukan bilangan prima
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) return false; // Jika divisible, bukan bilangan prima
    }
    return true;
  }

  // Menampilkan bilangan prima dari 0 hingga 201
  for (int num = 0; num <= 201; num++) {
    if (isPrime(num)) {
      print('Bilangan prima ditemukan: $num');
      print('Nama: Syava Aprilia');
      print('NIM: 2241760129');
    }
  }
}
