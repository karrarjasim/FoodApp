import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title , subtitle;

  const TitleText({Key key,@required this.title,@required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title ,
            style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w600,fontFamily: 'Baloo2-Medium.ttf'),
          ),
          Text(subtitle,
          style: TextStyle(fontSize: 17.0,color: Colors.green,fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
