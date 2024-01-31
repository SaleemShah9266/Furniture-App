import 'package:flutter/material.dart';
import 'package:furnature_app/models/catogeryModel.dart';

class ProductScreen extends StatefulWidget {
  final CategoryModel model;
  ProductScreen(this.model);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List image = [], similarImage = [];
  List<int> colorList = [0xFF304B82, 0xFFBB4747, 0xFF304B82];
  int selectionColorIndex = 0,
      scrolledImageIndex = 0,
      selectedSimilarColorIndex = 0;
  int purchaseCount = 1;
  Widget getColors(int index) {
    return GestureDetector(
      onTap: () {
        selectedSimilarColorIndex = index;
      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: 31,
        height: 31,
        decoration: BoxDecoration(
          border: Border.all(
              color: selectedSimilarColorIndex == index
                  ? Color(colorList[index])
                  : Colors.white,
              width: 1),
        ),
        child: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: Color(colorList[index]),
            borderRadius: BorderRadius.circular(45),
          ),
        ),
      ),
    );
  }

  Widget getSimilarColorImage(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSimilarColorIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.only(top: 2, bottom: 2, right: 20),
        width: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 1,
              offset: Offset(2.6, 2.6),
            ),
          ],
          border: Border.all(
              width: 1.5,
              color: selectedSimilarColorIndex == index
                  ? Colors.indigo
                  : Colors.transparent),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/${similarImage[index]}"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    image = widget.model.differentImageUrl.keys.toList();
    similarImage = widget.model.differentImageUrl[image[scrolledImageIndex]]!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(0.6, 0.7))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(Icons.keyboard_backspace),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(0.6, 0.7))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(Icons.local_grocery_store),
                      margin: EdgeInsets.only(
                        left: 190,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(0.6, 0.7))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
