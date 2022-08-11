import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:strategic/app/const/constant.dart';
import 'package:strategic/app/const/resuable/resuable_small_container.dart';

import '../../widget/detail.dart';
import '../../widget/itemcard.dart';
import '../../widget/product.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text("ListView", style: glableStyle),
          actions: [
            const Center(
                child: Text(
              "Update",
              style: mlableStyle,
            )),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.update,
                color: Colors.black,
                size: 40,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[50],
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.28,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 30, top: 20),
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.grey[50],
                          child: CachedNetworkImage(
                            height: double.infinity,
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://www.seekpng.com/png/full/157-1578024_ronda-rousey-png.png",
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width * 0.72,
                        height: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            margin: const EdgeInsets.only(left: 30),
                            width: MediaQuery.of(context).size.width * 0.88,
                            height: double.infinity,
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                //takes the row to the top
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(30),
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    height: double.infinity,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      child: CachedNetworkImage(
                                        height: double.infinity,
                                        fit: BoxFit.fill,
                                        imageUrl:
                                            "https://media.istockphoto.com/photos/business-partnership-business-man-investor-handshake-with-effect-picture-id1313742092?s=612x612",
                                        progressIndicatorBuilder: (context, url,
                                                downloadProgress) =>
                                            CircularProgressIndicator(
                                                value:
                                                    downloadProgress.progress),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text(
                                          "Promise with us",
                                          style: klableStyle,
                                        ),
                                        Text(
                                          "We can promise you that our product must be the best than the best so dont worry anything",
                                          style: mlableStyle,
                                          maxLines: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80),
                    width: double.infinity,
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        ResuableContainer(
                          color: Colors.pink,
                          width: 18,
                          height: 4,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        ResuableContainer(
                          color: Colors.pink,
                          width: 18,
                          height: 4,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        ResuableContainer(
                          color: Colors.pink,
                          width: 18,
                          height: 4,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        ResuableContainer(
                          color: Colors.pink,
                          width: 18,
                          height: 4,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        ResuableContainer(
                          color: Colors.pink,
                          width: 18,
                          height: 4,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Titles you can read here",
                style: mlableStyle,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: 10),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: products?.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: kDefaultPadding,
                      crossAxisSpacing: kDefaultPadding),
                  itemBuilder: (context, index) => ItemCard(
                    product: products![index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: products![index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 80),
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ResuableContainer(
                    color: Colors.pink,
                    width: 18,
                    height: 4,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  ResuableContainer(
                    color: Colors.pink,
                    width: 18,
                    height: 4,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  ResuableContainer(
                    color: Colors.pink,
                    width: 18,
                    height: 4,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  ResuableContainer(
                    color: Colors.pink,
                    width: 18,
                    height: 4,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  ResuableContainer(
                    color: Colors.pink,
                    width: 18,
                    height: 4,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
