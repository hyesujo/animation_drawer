import 'package:flutter/material.dart';
import 'package:side_drawer/configure.dart';
import 'package:side_drawer/screen/detailScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0),
        color: Colors.grey[200],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 isDrawerOpen ? IconButton(
                   icon: Icon(Icons.arrow_back_ios),
                   onPressed: (){
                     setState(() {
                       xOffset = 0;
                       yOffset =0;
                       scaleFactor = 1;
                       isDrawerOpen =false;
                     });
                   },
                 ) : IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: (){
                      setState(() {
                        xOffset = 230;
                        yOffset = 150;
                        scaleFactor = 0.6;
                        isDrawerOpen = true;
                      });
                    },
                  ),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                          children:[
                            Icon(Icons.location_on,
                            color: primaryGreen,),
                            Text('Ukraine')
                          ]
                      ),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,
              vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 30,
              horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search pet to adopt'),
                  Icon(Icons.settings),
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(
                              categories[index]['iconPath'],
                            height: 50,
                              width: 50,
                            color: Colors.grey[700],
                          ),
                        ),
                        Container(
                        padding:EdgeInsets.only(left: 20,
                        top: 5) ,
                          child: Text(categories[index]['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                  }
                  ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen()
                ));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList
                          ),
                          margin: EdgeInsets.only(top: 40),
                        ),
                        Align(
                          child: Hero(
                            tag: 1,
                              child: Image.asset(
                                  'assets/images/pet-cat1.png')),
                        )
                      ],
                    ),
                  ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          top:60,
                          bottom: 20
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList
                          ),
                          margin: EdgeInsets.only(top: 40),
                        ),
                        Align(
                          child: Image.asset('assets/images/pet-cat2.png'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          top:60,
                          bottom: 20
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
  SizedBox(
    height: 40,
  )
          ],
        ),
      ),
    );
  }
}


