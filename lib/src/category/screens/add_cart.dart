import 'package:flutter/material.dart';
import 'package:its/src/category/model/categories_model.dart';

class ChefBurgerPage extends StatefulWidget {
  @override
  _ChefBurgerPageState createState() => _ChefBurgerPageState();
}

class _ChefBurgerPageState extends State<ChefBurgerPage> {
  bool isFavorited = false;
  bool extraTomatoes = false;
  bool extraOlive = false;
  bool extraSavorySauce = false;
  double totalPrice = 25.00;

  void _updateTotalPrice() {
    setState(() {
      totalPrice = 25.00;
      if (extraTomatoes) totalPrice += 2.00;
      if (extraOlive) totalPrice += 2.00;
      if (extraSavorySauce) totalPrice += 2.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 270.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Hamburger.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16.0,
                    left: 16.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                  Positioned(
                    top: 16.0,
                    right: 16.0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFavorited = !isFavorited;
                        });
                      },
                      child: Icon(
                        isFavorited ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chef's Burger",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Divide chicken meat into 4 or 5 piles and using your hands, shape into patties. Serve immediately',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Let\'s make it better?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      ListTile(
                        title: Text('Extra Tomatoes'),
                        trailing: Text('\$2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        leading: Checkbox(
                          value: extraTomatoes,
                          onChanged: (bool? value) {
                            setState(() {
                              extraTomatoes = value ?? false;
                              _updateTotalPrice();
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Extra Olive'),
                        trailing: Text('\$2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        leading: Checkbox(
                          value: extraOlive,
                          onChanged: (bool? value) {
                            setState(() {
                              extraOlive = value ?? false;
                              _updateTotalPrice();
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Extra Savory Sauce'),
                        trailing: Text('\$2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        leading: Checkbox(
                          value: extraSavorySauce,
                          onChanged: (bool? value) {
                            setState(() {
                              extraSavorySauce = value ?? false;
                              _updateTotalPrice();
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Any special request?',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add to Order',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '\$$totalPrice',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
