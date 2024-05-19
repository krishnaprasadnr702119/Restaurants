import 'package:flutter/material.dart';

class FavView extends StatefulWidget {
  final List<Map<String, dynamic>> resentItems = [
    {
      'title': 'Potato burger',
      'name': 'Burger',
      'imagePath': 'assets/PotatoBurger.jpg',
      'rating': 3.5,
      'time': '20-30 min',
      'distance': '5 km',
      'price': '\$12',
    },
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
  ];

  FavView({super.key});

  @override
  _FavViewState createState() => _FavViewState();
}

class _FavViewState extends State<FavView> {
  // Set to keep track of favorite items
  Set<int> favoriteItems = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ListView.builder(
        itemCount: widget.resentItems.length,
        itemBuilder: (context, index) {
          final item = widget.resentItems[index];
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
              trailing: IconButton(
                icon: Icon(
                  favoriteItems.contains(index)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                      favoriteItems.contains(index) ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    if (favoriteItems.contains(index)) {
                      favoriteItems.remove(index);
                    } else {
                      favoriteItems.add(index);
                    }
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
