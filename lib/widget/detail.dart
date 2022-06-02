import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*20.0,
            width: double.infinity,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: ClipRRect(
                child: CachedNetworkImage(
                  height: double.infinity,
                  fit: BoxFit.fill,
                  imageUrl:
                  "https://media.istockphoto.com/photos/business-partnership-business-man-investor-handshake-with-effect-picture-id1313742092?s=612x612",
                  progressIndicatorBuilder: (context,
                      url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress
                              .progress),
                  errorWidget:
                      (context, url, error) =>
                  const Icon(Icons.error),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
