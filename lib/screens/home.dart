import 'package:flutter/material.dart';
import 'package:food_app/widgets/staggered.dart';
import 'package:food_app/widgets/title_text.dart';
import 'package:food_app/widgets/top_carousel.dart';
import 'package:food_app/widgets/custom_AppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  CustomAppBar(),
                  TopCarousel(),
                  TitleText(title: 'Nearby Restaurants',subtitle: 'See all',),
                  StaggeredGrid()
                ],
              ),
            ),
          ),
        ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey.shade500,
            unselectedLabelStyle: TextStyle(color: Colors.pink),
            selectedItemColor: Colors.green,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                title: Text('Order'),
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(
              //     Icons.school,
              //   ),
              //   title: Text('Order'),
              // ),
            ],
          ),
          
          ),
    );
  }
}
