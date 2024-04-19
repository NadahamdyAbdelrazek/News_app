import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/Category_model.dart';

class Categoryitem extends StatelessWidget {
  categorymodel model;
  int index;

  Categoryitem({super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: model.color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: index.isOdd ? Radius.circular(30) : Radius.zero,
            bottomRight: index.isEven ? Radius.circular(30) : Radius.zero,
          )),
      child: Column(
        children: [
          Expanded(child: Image.asset(model.image)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              model.name,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
