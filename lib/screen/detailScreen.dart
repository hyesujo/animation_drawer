import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:side_drawer/configure.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey[300],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Align(
              alignment: Alignment.topCenter,
              child: Transform.scale(
                scale: 1.2,
                  child: Hero(
                    tag: 1,
                    child: Image.asset(
                        'assets/images/pet-cat1.png'),
                  ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: primaryGreen,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.favorite_border,
                    color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: primaryGreen,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Text(
                            'Adoption',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 24
                          ),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
            ),
          ),
        ],
      )
    );
  }
}
