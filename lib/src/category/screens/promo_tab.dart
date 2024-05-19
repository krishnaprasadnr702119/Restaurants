import 'package:flutter/material.dart';
import 'package:its/src/category/screens/promo_card.dart';

class PromoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        PromoCard(
          title: 'Chef\'s Burger',
          description:
              'Sandwich features two savory flame-grilled beef patties',
          price: '\$6.19',
          imageUrl: 'assets/beef_burger.jpg',
        ),
        PromoCard(
          title: 'Rodeo Burger',
          description:
              'Crispy onion rings, tangy BBQ sauce and American cheese',
          price: '\$5.90',
          imageUrl: 'assets/beef_burger.jpg',
        ),
        PromoCard(
            title: 'Chef\'s Burger',
            description:
                'Sandwich features two savory flame-grilled beef patties',
            price: '\$6.19',
            imageUrl: 'assets/mushroom.jpg'),
        PromoCard(
          title: 'Delhi\'s Burger',
          description:
              'Sandwich features two savory flame-grilled beef patties',
          price: '\$6.19',
          imageUrl: 'assets/beef_burger.jpg',
        ),
      ],
    );
  }
}
