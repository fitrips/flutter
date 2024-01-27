import 'package:flutter/material.dart';

class GridFullScreen extends StatelessWidget {
  const GridFullScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GridView",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: widthScreen/heightScreen, // ubah kode ini
        children: <Widget>[
          Container(
            color: Colors.yellowAccent,
            child: Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                "2",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Container(
            color: Colors.brown,
            child: Center(
              child: Text(
                "3",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                "4",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}