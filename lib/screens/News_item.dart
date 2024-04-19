import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/NewsResponse.dart';

class newsitem extends StatelessWidget {
  Articles articles;

  newsitem({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(18)),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child:CachedNetworkImage(
                imageUrl: articles.urlToImage??"",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
          ),
          Text(
            articles.source?.name ?? "",
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
          ),
          Text(articles.title ?? "",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.black)),
          Text(articles.description ?? "",
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.black)),
        ],
      ),
    );
  }
}
