import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart'; // Pastikan model Item diimport
class ItemPage extends StatelessWidget {
  final Item item; // Parameter untuk menerima data item
  // Constructor untuk menerima data item
  ItemPage({required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail ${item.name}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: item.name,
              child: Image.network(item.imageUrl, height: 200, width: 200),
            ),
            SizedBox(height: 20),
            Text('Name: ${item.name}', style: TextStyle(fontSize: 24)),
            Text('Price: Rp${item.price}', style: TextStyle(fontSize: 24)),
            Text('Stock: ${item.stock}', style: TextStyle(fontSize: 24)),
            Text('Rating: ${item.rating}', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping List'), // Menampilkan nama item di AppBar
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('${item.name} with ${item.price}'),
//             //Text('Item: ${item.name} with Price: Rp${item.price}'), // Menampilkan nama item
//             //Text('Price: Rp${item.price}'), // Menampilkan harga item
//           ],
//         ),
//       ),
//     );
//   }
// }
