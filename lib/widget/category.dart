import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:woocommerce/woocommerce.dart';
import 'package:woocommerce/models/product_category.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

String baseUrl = "https://www.udanmarket.com/";
String consumerKey = "ck_dd4342fc7a495c711e4b7c446a4c55dbb5775a81";
String consumerSecret = "cs_38cdb4fc2688f52d53da37d195ee74938685a1f0";

class _CategoryState extends State<Category> {
  List<WooProductCategory> _category = [];

  WooCommerce _wooCommerce = WooCommerce(
      baseUrl: baseUrl,
      consumerKey: consumerKey,
      consumerSecret: consumerSecret,
      isDebug: true);

  getCategory() async {
    _category = await _wooCommerce.getProductCategories();
    printWrapped('_category: ' + _category.toString());
    setState(() {
      //make state for category
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.orange[100],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _category.length,
        itemBuilder: (BuildContext context, int index) {
          final cat = _category[index];
          return Container(
            margin: EdgeInsets.all(10),
            width: 210.0,
            color: Colors.red,
            child: Stack(
              children: [
                Container(
                  height: 120.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueAccent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cat.name,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ]),
                  child: ListView(
                    children: List.generate(_category.length, (index) {
                      print(_category[index].image);
                      if (_category[index].image == null) {
                        return Text('image not found');
                      }
                      return Image.network(_category[index].image.src != null
                          ? _category[index].image.src
                          : '');
                    }),
//                      for (var i = 0; i < _category.length; i++)
//                        cat == _category.length ??
//
//                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  // by amen to print long response
  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }
}
