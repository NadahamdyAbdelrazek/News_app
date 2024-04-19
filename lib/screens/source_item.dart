import 'package:flutter/material.dart';
import 'package:newsapp/models/source_response.dart';

class sourceitem extends StatelessWidget {
  Sources source;
  bool isselected;

  sourceitem({super.key, required this.source, required this.isselected});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green),
          color: isselected ? Colors.green : Colors.transparent),
      child: Text(
        source.name??"",
        style: TextStyle(color: isselected ? Colors.white : Colors.green),
      ),
    );
  }
}
