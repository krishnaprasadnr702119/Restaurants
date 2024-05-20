import 'package:flutter/material.dart';
import 'package:its/src/category/screens/add_cart.dart';
import 'package:its/src/category/screens/order.dart';

class PromoCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String imageUrl;

  PromoCard({
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChefBurgerPage(),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          contentPadding: EdgeInsets.all(16.0),
          leading:
              Image.asset(imageUrl, width: 60, height: 60, fit: BoxFit.cover),
          title: Text(title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle: Text(description),
          trailing: Text(price,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ),
      ),
    );
  }
}
