import 'dart:ui';

import 'package:flutter/foundation.dart';

class categorymodel {
  String id;
  String name;
  String image;
  Color color;

  categorymodel(
      {required this.id,
      required this.name,
      required this.image,
      required this.color});

  static List<categorymodel> getCategorys() {
    return [
      categorymodel(
          id: "business",
          name: "Business ",
          image: "assets/images/bussines.png",
          color: Color(0xffCF7E48)),
      categorymodel(
          id: "sports",
          name: "Sports ",
          image: "assets/images/sports.png",
          color: Color(0xffC91C22)),
      categorymodel(
          id: "entertainment",
          name: "Politics ",
          image: "assets/images/Politics.png",
          color: Color(0xff003E90)),
      categorymodel(
          id: "health",
          name: "Health ",
          image: "assets/images/health.png",
          color: Color(0xffED1E79)),
      categorymodel(
          id: "general",
          name: "Enviroment ",
          image: "assets/images/environment.png",
          color: Color(0xff4882CF)),
      categorymodel(
          id: "science",
          name: "Science ",
          image: "assets/images/science.png",
          color: Color(0xffF2D352)),
      categorymodel(
          id: "technology",
          name: "Technology ",
          image: "assets/images/science.png",
          color: Color(0xffF2D352))
    ];
  }
}
