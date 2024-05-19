import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:its/src/Resent.dart';
import 'package:its/src/fav.dart';
import 'package:its/src/price.dart';
import 'package:its/src/rating.dart';
import 'package:its/src/speed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showResentListView = true;
  bool showRatingListView = false;
  bool showSpeedView = false;
  bool showPriceView = false;
  bool showFavview = false;

  Widget _buildButton(String label, bool isSelected, VoidCallback onPressed) {
    return Column(
      children: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
          ),
        ),
        if (isSelected)
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double padding = screenSize.width > 600 ? 24.0 : 18.0;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hungry Paul?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'DELIVERING ',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Home ⌄',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.orange[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange[900]),
                                child: Icon(
                                  Icons.motorcycle_rounded,
                                  size: 50,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Delivery',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                            Text(
                              '+12 Options',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 140,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.purple[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple[900]),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              size: 50,
                              color: Colors.white,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Pick Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          '+5 Options',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 140,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.yellow[900]),
                            child: Icon(
                              Icons.restaurant,
                              size: 50,
                              color: Colors.white,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Dine in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          '+5 Options',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 140,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue[900]),
                            child: Icon(
                              Icons.star,
                              size: 50,
                              color: Colors.white,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Booking',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          '+5 Options',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: Container(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    _buildButton(
                      'Resent',
                      showResentListView,
                      () {
                        setState(() {
                          showResentListView = true;
                          showRatingListView = false;
                          showSpeedView = false;
                          showPriceView = false;
                          showFavview = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildButton(
                      'Rating',
                      showRatingListView,
                      () {
                        setState(() {
                          showRatingListView = true;
                          showResentListView = false;
                          showSpeedView = false;
                          showPriceView = false;
                          showFavview = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildButton(
                      'Speed',
                      showSpeedView,
                      () {
                        setState(() {
                          showResentListView = false;
                          showRatingListView = false;
                          showSpeedView = true;
                          showPriceView = false;
                          showFavview = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildButton(
                      'Price',
                      showPriceView,
                      () {
                        setState(() {
                          showResentListView = false;
                          showRatingListView = false;
                          showSpeedView = false;
                          showPriceView = true;
                          showFavview = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildButton(
                      'Favorite',
                      showFavview,
                      () {
                        setState(() {
                          showResentListView = false;
                          showRatingListView = false;
                          showSpeedView = false;
                          showPriceView = false;
                          showFavview = true;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (showResentListView)
            Expanded(
              child: ResentListView(),
            ),
          if (showRatingListView)
            Expanded(
              child: RatingListview(),
            ),
          if (showSpeedView)
            Expanded(
              child: SpeedView(),
            ),
          if (showPriceView)
            Expanded(
              child: PriceView(),
            ),
          if (showFavview)
            Expanded(
              child: FavView(),
            ),
        ],
      ),
    );
  }
}
