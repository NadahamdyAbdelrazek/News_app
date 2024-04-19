import 'package:flutter/material.dart';
import 'package:newsapp/models/Category_model.dart';
import 'package:newsapp/models/data_tab.dart';
import 'package:newsapp/screens/Categorys_tab.dart';
import 'package:newsapp/shared/network/remote/api-manager.dart';

import '../screens/News_tab.dart';
import '../screens/Setting_tab.dart';
import '../screens/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/backgroundimg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawerwidget(onClick: onDrawrClick),
        appBar: AppBar(
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff39A552),
          centerTitle: true,
          title: Text(
            "News App",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
        body: selectedcategory == null
            ? categorystab(onClick: onCategoryClick)
            : DataTab(categoryid: selectedcategory!.id),
      ),
    );
  }

  categorymodel? selectedcategory;

  onCategoryClick(category) {
    selectedcategory = category;
    setState(() {});
  }
  onDrawrClick(id){
    if(id==Drawerwidget.Category_id){
      selectedcategory=null;
      Navigator.pop(context);
      setState(() {});

    }else if(id==Drawerwidget.Setting_id){

    }

    }


}
