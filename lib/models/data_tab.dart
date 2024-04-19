import 'package:flutter/material.dart';

import '../screens/News_tab.dart';
import '../shared/network/remote/api-manager.dart';

class DataTab extends StatelessWidget {
  String categoryid;
   DataTab({super.key,required this.categoryid});

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      future: ApiManager.getSources(categoryid), builder: (context, snapshot) {
      if (snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator());
      }if(snapshot.hasError){
        return Text("Something went wrong");
      }
      var sourceslist=snapshot.data?.sources??[];
      if(sourceslist.isEmpty){
        return Center(child: Text("No Sources"));
      }
      return newstab(sources: sourceslist,);
    },);
  }
}
