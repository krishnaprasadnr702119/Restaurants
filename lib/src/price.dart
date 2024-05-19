import 'package:flutter/material.dart';

class PriceView extends StatelessWidget {
  final List<Map<String, dynamic>> resentItems = [
    {
      'title': 'Veggie burger',
      'name': 'Burger',
      'imagePath': 'assets/veggie-burger.jpg',
      'rating': 3.5,
      'time': '20-30 min',
      'distance': '5 km',
      'price': '\$12',
    },
    {
      'title': 'Beef burger',
      'name': 'Burger',
      'imagePath': 'assets/beef_burger.jpg',
      'rating': 4.5,
      'time': '25-30 min',
      'distance': '2.1 km',
      'price': '\$10',
    },
    {
      'title': 'Mushroom burger',
      'name': 'Burger',
      'imagePath': 'assets/mushroom.jpg',
      'rating': 4.0,
      'time': '40-45 min',
      'distance': '3 km',
      'price': '\$15',
    },
    {
      'title': 'Potato burger',
      'name': 'Burger',
      'imagePath': 'assets/PotatoBurger.jpg',
      'rating': 3.5,
      'time': '20-30 min',
      'distance': '5 km',
      'price': '\$12',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ListView.builder(
        itemCount: resentItems.length,
        itemBuilder: (context, index) {
          final item = resentItems[index];
          return Container(
            height: 100,
            child: ListTile(
              leading: Image.asset(
                item['imagePath'],
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 5),
                      Text(
                        item['rating'].toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        item['time'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          item['price'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
