import 'package:flutter/material.dart';
import 'package:technationtask/util/items_list.dart';
import 'package:technationtask/widgets/slide_item.dart';

class HorizontalItemList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(100.0, 50, 10.0, 0),
      child: ListView(
        children: <Widget>[
          //Horizontal List here
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemsList == null ? 0 : itemsList.length,
              itemBuilder: (BuildContext context, int index) {
                Map itemList = itemsList[index];
                return Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: SlideItem(
                    img: itemList["img"],
                    title: itemList["title"],
                  ),
                );
              },
            ),
          )

        ],
      ),
    );
  }
}
