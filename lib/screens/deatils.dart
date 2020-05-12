import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Details extends StatelessWidget {
  final String title, image;

  const Details({Key key, @required this.title, @required this.image})
      : super(key: key);
  static List data = [
    {
      'name': 'Breakfast',
      'image': '1',
      'price': 4,
      'rating': 2.5,
      'totalRate': 120
    },
    {
      'name': 'Burger',
      'image': '2',
      'price': 6,
      'rating': 4.5,
      'totalRate': 120
    },
    {
      'name': 'Rice',
      'image': '3',
      'price': 20,
      'rating': 3.0,
      'totalRate': 120
    },
    {
      'name': 'Pizza',
      'image': '4',
      'price': 20,
      'rating': 4.5,
      'totalRate': 120
    },
    {
      'name': 'Steak',
      'image': '5',
      'price': 20,
      'rating': 2.0,
      'totalRate': 120
    },
    {
      'name': 'Pasta',
      'image': '6',
      'price': 20,
      'rating': 1.5,
      'totalRate': 120
    },
  ];
  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(
  SystemUiOverlayStyle(
    // For iOS
    statusBarBrightness: Brightness.dark,
    // For Android M and higher
    statusBarIconBrightness: Brightness.dark,
  ),
);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 350.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ),
                Container(
                  color: Colors.black.withOpacity(.5),
                ),
                SafeArea(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            'Tacos Nanchas',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 30.0,
                                fontFamily: 'Baloo2-Medium.ttf'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            Text(
                              'Lombard Street',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            width: double.infinity,
          ),
          Positioned(
            top: 300.0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  )),
              height: 600.0,
              child: Container(
                padding: EdgeInsets.all(14.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Available (6) ',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.sort)
                      ],
                    ),
                    Flexible(
                        child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                        padding: EdgeInsets.all(14.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/items/${data[index]['image']}.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:14.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    data[index]['name'],
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    '\$' + data[index]['price'].toString(),
                                    style: TextStyle(
                                      fontSize: 21.0,
                                      color: Colors.black
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        '${data[index]['rating']} ',
                                        style: TextStyle(
                                          fontSize: 21.0,
                                          color: Colors.black
                                        ),
                                      ),
                                      RatingBar(
                                        unratedColor: Colors.grey,
                                        itemSize: 25.0,
                                        initialRating: data[index]['rating'],
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 0.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 12.0,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '(${data[index]['totalRate']} rating)',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.black
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add_shopping_cart,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
