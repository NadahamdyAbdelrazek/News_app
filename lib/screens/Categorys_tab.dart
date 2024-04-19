import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/Category_model.dart';

import 'categoru_item.dart';

class categorystab extends StatelessWidget {

  categorystab({super.key,required this.onClick});
  Function onClick;
  List<categorymodel> allcategory = categorymodel.getCategorys();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Pick your category of interest",
            style: TextStyle(
                color: Color(0xff4F5A69),
                fontWeight: FontWeight.w700,
                fontSize: 22),
          ),
          Expanded(
            child: GridView.builder(itemBuilder: (context, index) {
              return InkWell(onTap: (){
               onClick(allcategory[index]);
              },
                  child: Categoryitem(model: allcategory[index],index: index));
            },
              itemCount: allcategory.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 12,crossAxisSpacing: 12),
          ),
          )
        ],
      ),
    );
  }
}
