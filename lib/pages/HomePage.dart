import 'package:flutter/material.dart';

import '../styles/button.dart';
import '../styles/color.dart';
import '../styles/typo.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Resto',
                              style: header,
                            ),
                            Text(
                              'Where foods alive',
                              style: subline,
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset('assets/images/user_photo.png', height: 42),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nearby',
                          style: subheader,
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 310,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 20),
                    Container(
                      width: 210,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/teras.png', height: 250),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                'Terasnya Ibu\nAngga',
                                style: product,
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon( Icons.start,),
                                  SizedBox(width: 4),
                                  Text(
                                    '5.0',
                                    style: rate,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 210,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/samanja.png', height: 250),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                'Samanja Ka\nMana',
                                style: product,
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon( Icons.start),
                                  SizedBox(width: 4),
                                  Text(
                                    '4.8',
                                    style: rate,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: softgrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Browse by',
                        style: subheader,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 46,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ElevatedButton(
                              style: btnPill,
                              onPressed: () {
                                debugPrint('salads clicked');
                              },
                              child: Row(
                                children: [
                                  Image.asset('assets/images/taco.png', height: 22),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Nachos',
                                    style: cate,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            ElevatedButton(
                              style: btnPill,
                              onPressed: () {
                                debugPrint('salads clicked');
                              },
                              child: Row(
                                children: [
                                  Image.asset('assets/images/salads.png', height: 22),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Salads',
                                    style: cate,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            ElevatedButton(
                              style: btnPill,
                              onPressed: () {
                                debugPrint('salads clicked');
                              },
                              child: Row(
                                children: [
                                  Image.asset('assets/images/es.png', height: 22),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Es Krim',
                                    style: cate,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            ElevatedButton(
                              style: btnPill,
                              onPressed: () {
                                debugPrint('salads clicked');
                              },
                              child: Row(
                                children: [
                                  Image.asset('assets/images/pizza.png', height: 22),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Pizzas',
                                    style: cate,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Foods',
                      style: subheader,
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/sate.png',
                          height: 80,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sate Madura',
                              style: product,
                            ),
                            SizedBox(height: 2),
                            Text(
                              '\$51,200',
                              style: price,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset('assets/images/star.png', height: 18),
                            SizedBox(width: 2),
                            Image.asset('assets/images/star.png', height: 18),
                            SizedBox(width: 2),
                            Image.asset('assets/images/star.png', height: 18),
                            SizedBox(width: 2),
                            Image.asset('assets/images/star.png', height: 18),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/salad.png',
                          height: 80,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salad Meiyou',
                              style: product,
                            ),
                            SizedBox(height: 2),
                            Text(
                              '\$4,125',
                              style: price,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset('assets/images/star.png', height: 18),
                            SizedBox(width: 2),
                            Image.asset('assets/images/star.png', height: 18),
                            SizedBox(width: 2),
                            Image.asset('assets/images/star.png', height: 18),
                            SizedBox(width: 2),
                            Image.asset('assets/images/star.png', height: 18),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/baso.png',
                          height: 80,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Basso Ayeam',
                              style: product,
                            ),
                            SizedBox(height: 2),
                            Text(
                              '\$982',
                              style: price,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset('assets/images/star.png', height: 18),
                            SizedBox(width: 2),
                            Image.asset('assets/images/star.png', height: 18),
                            SizedBox(width: 2),
                            Image.asset('assets/images/star.png', height: 18),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
