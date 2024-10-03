void main() {
  /*Langkah 1
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
  */


  final List<String?> list = List.filled(5, null); // Membuat list dengan 5 elemen bernilai null

  list[1] = 'Syava Aprilia'; // Mengisi nama pada indeks ke-1
  list[2] = '2241760129'; // Mengisi NIM pada indeks ke-2

  print(list);

}
