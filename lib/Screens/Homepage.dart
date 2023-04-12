import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:emat_app/Screens/widgets/CategoriesWidget.dart';
import 'package:emat_app/Screens/widgets/HomeAppBar.dart';
import 'package:emat_app/Screens/widgets/ItemsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 200,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Here....",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                CategoriesWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (index) {},
          color: Color(0xFF4C53A5),
          height: 70,
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
          ]),
    );
  }
}
