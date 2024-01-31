import 'package:circle_nav_bar/circle_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furnature_app/models/catogeryModel.dart';
import 'package:furnature_app/screens/ProductScreen.dart';
import 'package:furnature_app/wedgets/GridItems.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> categories = ["All", "Chairs", "Sofas", "Tables", "Beds"];
  int activeIndex = 2;

  List<Map<String, dynamic>> navItems = [
    {'Icon': Icons.location_city_rounded, 'color': Colors.black54},
    {'Icon': Icons.compass_calibration, 'color': Colors.black54},
    {'Icon': Icons.bookmark, 'color': Colors.black54},
    {'Icon': Icons.mail, 'color': Colors.red},
    {'Icon': Icons.person, 'color': Colors.black54},
  ];
  Widget getCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 2, bottom: 2, right: 20),
        width: 120,
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index ? Colors.indigo : Colors.grey,
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.indigo,
                  blurRadius: 0.2,
                  offset: Offset(2.6, 2.6))
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            )),
        child: Center(
          child: Text(
            categories[index],
            style: TextStyle(fontSize: 19),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                        child: Icon(Icons.menu),
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
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(left: 20, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        offset: Offset(2.6, 2.6),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45),
                      bottomLeft: Radius.circular(45),
                    ),
                    border: Border.all(color: Colors.indigo, width: 1.5),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Setting",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.filter_alt_off_rounded),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                // category
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: categories
                        .asMap()
                        .entries
                        .map((MapEntry map) => getCategories(map.key))
                        .toList(),
                  ),
                ),
                SizedBox(height: 20),
                // item grid view
                StaggeredGrid.count(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: categoriesGrid.asMap().entries.map((MapEntry map) {
                    int index = map.key;
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(categoriesGrid[index]),
                            ));
                      },
                      child: GridItems(index),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CircleNavBar(
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        height: 60,
        circleWidth: 60,
        activeIndex: activeIndex,
        circleColor: Colors.indigo,
        color: Colors.white,
        activeIcons: List.generate(
          navItems.length,
          (index) => Icon(
            navItems[index]['Icon'],
            color: Colors.white,
          ),
        ),
        inactiveIcons: List.generate(
          navItems.length,
          (index) => Icon(
            navItems[index]['Icon'],
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
