import 'package:flutter/material.dart';

import './product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: "bg",
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFFFFC5C5),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 18, right: 18, top: 50, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        product.type,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.shopping_cart,
                        ),
                      ),
                    ],
                  ),
                ),
                Hero(
                  tag: product.name,
                  child: Image.asset(
                    product.imageUrl,
                    width: 200,
                    height: 250,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  product.name,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'lorem ipsum 93.9, unetruc koue aiuqj kjshhuq'
                  'lorem ipsum 93.9, unetruc.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'lorem ipsum 93.9, unetruc koue aiuqj kjshhuq wnbxiyhq'
                  'lorem ipsum 93.9,  koue aiuqj kjshhuq wnbxiyhq'
                  'lorem ipsum 93.9, unetruc koue aiuqj kjshhuq '
                  'lorem ipsum 93.9, unetruc koue aiuqj kjshhuq wnbxiyhq',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Add to card'.toUpperCase(), style: TextStyle(
            
                      ),),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
