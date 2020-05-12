import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class StaggeredGrid extends StatelessWidget {
 
  const StaggeredGrid({Key key}) : super(key: key);
static List data = [
    {
      'name': 'Pizza Boy',
      'image': '1',
      'rating': 4.5,
      'subtitle': 'Chinese • American'
    },
    {
      'name': 'Tacos Nanchas',
      'image': '2',
      'rating': 4.5,
      'subtitle': 'Chinese • American'
    },
    {
      'name': 'Artisan Coffee',
      'image': '3',
      'rating': 4.5,
      'subtitle': 'Coffee • Fast Food'
    },
   {
      'name': 'Kacchi Garh',
      'image': '4',
      'rating': 4.5,
      'subtitle': 'Chinese • American'
    },
    {
      'name': 'Kacchi Garh',
      'image': '5',
      'rating': 4.5,
      'subtitle': 'Chinese • American'
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGridView.countBuilder(
        primary: false,
        shrinkWrap: true,
        crossAxisCount: 4,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) => 
        Container(
          decoration: BoxDecoration(
              //  border: Border.all(color: Colors.red),
              ),
          child: Column(
            children: <Widget>[
              Flexible(
                child: Item(data:data[index]),
              ),
              
            ],
          ),
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 3 : 4),
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 15.0,
      ),
    );
  }
}
