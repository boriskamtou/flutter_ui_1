import 'package:flutter/material.dart';
import 'package:flutter_ui_1/productDetail.dart';
import './product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter challenge ui',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final product = products[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 500,
            width: double.infinity,
            child: LayoutBuilder(
              builder: (cx, ct) {
                double w = ct.maxWidth;
                double h = ct.maxHeight;

                return Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Hero(
                        tag: "bg",
                        child: Container(
                          width: w * .9,
                          height: h * .75,
                          color: Color(0xFFFFC5C5),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.type,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            product.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: h * .32,
                      left: -50,
                      child: Hero(
                        tag: product.name,
                        child: Image.asset(
                          product.imageUrl,
                          width: 370,
                          height: 350,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Amazing Speed.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Incredible Power.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "The Top Fuel 9.9 XX1 AXS is build for Speed and Capability on Any terrein",
                    style: TextStyle(),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 22),
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ProductDetail(product: product,)),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
