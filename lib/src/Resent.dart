import 'package:flutter/material.dart';

class ResentListView extends StatelessWidget {
  final List<Map<String, dynamic>> resentItems = [
    {
      'title': 'Burger King',
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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ListView.builder(
        itemCount: resentItems.length,
        itemBuilder: (context, index) {
          final item = resentItems[index];
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(item['imagePath']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
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
                              Text(
                                item['price'],
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  item['time'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                item['distance'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
