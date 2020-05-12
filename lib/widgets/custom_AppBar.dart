import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Delivery to',
            style: TextStyle(color: Colors.green),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 60.0,
              ),
              Row(
                children: <Widget>[
                  Text('San Francisco',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w500,fontFamily: 'Baloo2-Medium.ttf')),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.green,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'Filter',
                  style: TextStyle(fontSize: 18.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
