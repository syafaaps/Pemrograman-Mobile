void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

// Menggunakan .add() untuk menambahkan elemen ke names1
  names1.add('Syava Aprilia');
  names1.add('2241760129');

  // Menggunakan .addAll() untuk menambahkan elemen ke names2
  names2.addAll({'Syava', '129'});

print(names1);
print(names2);
print(names3);

}
