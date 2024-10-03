void main() {
  /*
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
*/

// Deklarasi awal dengan elemen yang diperbarui
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'  // Diubah dari 1 ke 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon'  // Diubah dari 2 ke 'argon'
  };

  // Print awal
  print('Gifts map: $gifts');
  print('Noble Gases map: $nobleGases');

  // Menambahkan elemen nama dan NIM pada variabel gifts
  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Syava Aprilia';
  mhs1['NIM'] = '129';
  
  gifts['name'] = 'Syava Aprilia';
  gifts['NIM'] = '129';

  // Menambahkan elemen nama dan NIM pada variabel nobleGases
  var mhs2 = Map<int, String>();
  mhs2[1] = 'Syava Aprilia';  // Menggunakan key 1 untuk nama
  mhs2[2] = '129';            // Menggunakan key 2 untuk NIM

  nobleGases[1] = 'Syava Aprilia'; // Menggunakan key 1 untuk nama
  nobleGases[2] = '129';           // Menggunakan key 2 untuk NIM

  // Print hasil akhir
  print('mhs1 map: $mhs1');
  print('mhs2 map: $mhs2');
  print('Updated gifts map: $gifts');
  print('Updated nobleGases map: $nobleGases');

}
