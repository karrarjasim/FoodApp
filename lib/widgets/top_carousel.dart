import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TopCarousel extends StatelessWidget {
  const TopCarousel({Key key}) : super(key: key);
  static List name =['Pitzza','Homberger','Pork Chop'];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        child: CarouselSlider(
          height: 200.0,
          items: [1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 9.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('assets/images/slider$i.jpg'))),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Text(
                          '${name[i-1]} \$5',
                          style: TextStyle(fontSize: 16.0,color: Colors.white,fontWeight: FontWeight.w600),
                        ),
                      ),
                    ));
              },
            );
          }).toList(),
        ));
  }
}
