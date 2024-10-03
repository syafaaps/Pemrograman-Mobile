void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];  // Menggunakan spread operator untuk menambahkan elemen dari 'list' ke 'list2'
  
  print(list);  // Menampilkan 'list'
  print(list2); // Menampilkan 'list2'
  print(list2.length); // Menampilkan panjang 'list2'

 // Kode tambahan
  var list1 = [1, 2, null]; // Deklarasi dengan var
  print(list1);            // Menampilkan 'list1'
  
  var list3 = [0, ...?list1]; // Menggunakan spread operator dengan null-aware
  print(list3.length);       // Menampilkan panjang 'list3'

  // Menambahkan variabel list berisi NIM Anda
  var nimList = ['2241760129']; // NIM Anda
  var combinedList = [...list, ...nimList]; // Menggabungkan list dengan nimList
  
  print(combinedList); // Menampilkan combinedList
  print(combinedList.length); // Menampilkan panjang combinedList

  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = 'Manager'; // Ubah ini untuk menguji dengan nilai lain
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);


var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);

}
