import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
     Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'assets/images/gula.jpeg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'assets/images/garam.jpeg',
      stock: 20,
      rating: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
            child: Hero(
              tag: item.name,
              child: Card(
                child: Column(
                  children: [
                    Image.network(item.imageUrl, height: 100, width: 100),
                    Text(item.name),
                    Text('Price: Rp${item.price}'),
                    Text('Stock: ${item.stock}'),
                    Text('Rating: ${item.rating}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        color: Colors.grey[200],
        child: Text('Syava Aprilia | NIM 2241760129'),
      ),
    );
  }
}
//     Item(name: 'Sugar', price: 5000),
//     Item(name: 'Salt', price: 2000),
//   ];

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping List'),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(8), // Memberikan margin di sekitar ListView
//         child: ListView.builder(
//           padding: EdgeInsets.all(8), // Padding untuk item di dalam ListView
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return InkWell(
//               onTap: () {
//                 // Navigasi ke halaman ItemPage dengan mengirim data item
//                 Navigator.pushNamed(
//                   context,
//                   '/item',
//                   arguments: item, // Kirim data item sebagai argument
//                 );
//               },
//               child: Card(
//                 child: Container(
//                   margin: EdgeInsets.all(8), // Margin untuk setiap card
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Text(item.name),
//                       ),
//                       Expanded(
//                         child: Text(
//                           item.price.toString(),
//                           textAlign:
//                               TextAlign.end, // Menyelaraskan harga di kanan
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }