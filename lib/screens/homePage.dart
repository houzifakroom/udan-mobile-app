import 'package:flutter/material.dart';
import 'package:udan/widget/category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 2.0),
          child: InkResponse(
            onTap: () => print("Main Menu"),
            child: Icon(
              Icons.menu,
              size: 25.0,
              color: Colors.black45,
            ),
          ),
        ),
        title: Image(
          image: AssetImage('assets/images/logo.png'),
          height: 100.0,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        actions: <Widget>[
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.0, right: 10.0),
                child: InkResponse(
                  onTap: () => print("add To cart"),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 25.0,
                    color: Colors.black45,
                  ),
                ),
              ),
              Positioned(
                  bottom: 8.0,
                  right: 5.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.orangeAccent,
                    ),
                    child: Center(
                      child: Text(
                        '5',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.0),
            child: InkResponse(
              onTap: () => print("Seach"),
              child: Icon(
                Icons.search,
                size: 25.0,
                color: Colors.black45,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [Image(image: AssetImage('assets/images/homePage.jpeg'))],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Our Category",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  )
                ],
              ),
              //gategory
              Category()
            ],
          )
        ],
      ),
    );
  }
}
