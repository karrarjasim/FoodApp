import 'package:flutter/material.dart';
import 'package:food_app/screens/deatils.dart';

class Item extends StatelessWidget {
   final  data;
  const Item({Key key,@required this.data}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
         MaterialPageRoute(builder: (context)=> Details(title: 'null', image: 'assets/images/home/${data['image']}.jpg')));

      },
          child: Container(
           
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/home/${data['image']}.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(8.0),
                       ),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '4.5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '20 min',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    title:
                        Text(data['name'], style: TextStyle(fontSize: 20.0)),
                    subtitle: Text(data['subtitle'],
                        style: TextStyle(fontSize: 19.0)),
                  ),
                )
              ],
            ),
          ),
    );
  }
}