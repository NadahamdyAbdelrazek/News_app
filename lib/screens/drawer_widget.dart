import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  Function onClick;
  Drawerwidget( {super.key,required this.onClick});
  static const Category_id=1;
  static const Setting_id=2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * .7,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.green,
            alignment: Alignment.center,
            child: Text(
              "News App!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(onTap: (){
            onClick(Category_id);

          },
            child: Row(
              children: [
                Icon(
                  Icons.list,
                  color: Color(0xff303030),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Categories ",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24,color: Color(0xff303030)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(onTap: (){
            onClick(Setting_id);
          },
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Color(0xff303030),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Settings ",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24,color: Color(0xff303030)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
