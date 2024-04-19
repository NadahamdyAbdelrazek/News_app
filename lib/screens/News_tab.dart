import 'package:flutter/material.dart';
import 'package:newsapp/screens/source_item.dart';
import 'package:newsapp/shared/network/remote/api-manager.dart';

import '../models/source_response.dart';
import 'News_item.dart';

class newstab extends StatefulWidget {
  List<Sources> sources;

  newstab({super.key, required this.sources});

  @override
  State<newstab> createState() => _newstabState();
}

class _newstabState extends State<newstab> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sources.length,
            child: TabBar(
                onTap: (value) {
                  setState(() {

                  });
                  selectedindex = value;
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: widget.sources
                    .map((e) =>
                    Tab(
                      child: sourceitem(
                        source: e,
                        isselected: widget.sources.elementAt(selectedindex) ==
                            e,
                      ),
                    ))
                    .toList())),
        FutureBuilder(future: ApiManager.getNewsData(
            widget.sources[selectedindex].id ?? ""),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator(color: Colors.green,));
              }
              if (snapshot.hasError) {
                return Text("Something went wrong");
              }
              var articleslist = snapshot.data?.articles ?? [];
              if (articleslist.isEmpty) {
                return Center(child: Text("No Sources"));
              }
              return Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 12,),
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: newsitem(articles:articleslist[index]),
                  );
                },itemCount: articleslist.length,),
              );
            },

        )


      ]

      ,

    );
  }
}
