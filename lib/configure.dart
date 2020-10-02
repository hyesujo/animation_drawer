import 'package:flutter/material.dart';

Color primaryGreen = Color(0xff416d6d);

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300],
  offset: Offset(0,10),
    blurRadius: 7
  ),
];

List<Map> categories = [
  {'name': 'cats', 'iconPath' : 'assets/icons/cat.png'},
  {'name': 'Dogs', 'iconPath' : 'assets/icons/dog.png'},
  {'name': 'Bunnies', 'iconPath' : 'assets/icons/rabbit.png'},
  {'name': 'Parrots', 'iconPath' : 'assets/icons/parrot.png'},
  {'name': 'Horses', 'iconPath' : 'assets/icons/horse.png'},
];