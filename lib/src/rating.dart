import 'package:flutter/material.dart';

class RatingListview extends StatelessWidget {
  final List<Map<String, dynamic>> resentItems = [
    {
      'title': 'Whataburger',
      'name': 'Burger',
      'imagePath': 'assets/whataburger.jpg',
      'rating': 3.5,
      'time': '20-30 min',
      'distance': '5 km',
      'price': '\$12',
    },
    {
      'title': 'McDonalds',
      'name': 'Burger',
      'imagePath': 'assets/mac.png',
      'rating': 3.5,
      'time': '20-30 min',
      'distance': '5 km',
      'price': '\$12',
    },
    {
      'title': ' Burger King',
      'name': 'Burger',
      'imagePath': 'assets/burger_king.png',
      'rating': 4.5,
      'time': '25-30 min',
      'distance': '2.1 km',
      'price': '\$10',
    },
    {
      'title': 'KFC',
      'name': 'Burger',
      'imagePath': 'assets/kfc_logo.png',
      'rating': 4.0,
      'time': '40-45 min',
      'distance': '3 km',
      'price': '\$15',
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
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        item['rating'].toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        item['name'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 8),
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
