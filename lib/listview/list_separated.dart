import 'package:flutter/material.dart';

class ListItem {
  final Color color;
  final String text;

  ListItem(this.color, this.text);
}

class BelajarListSeparated extends StatelessWidget {
   BelajarListSeparated({super.key});
 
  final List<ListItem> itemList = [
    ListItem(Colors.purple, "Fitri"),
    ListItem(Colors.red, "Asti"),
    ListItem(Colors.brown, "Sena"),
    ListItem(Colors.green, "Upin"),
    ListItem(Colors.yellow, "Ipin"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        itemCount: itemList.length,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black,
          );
        }, 
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 200,
            color: itemList[index].color,
            child: Center(
              child: Text(itemList[index].text),
            ),
          );
        },
      ),
    );
  }
}