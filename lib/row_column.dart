import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini isi row 1"),
        Text("Ini isi row 2"),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Ini Adalah isi Column 1"),
            Text("Ini Adalah isi Column 2"),
            Text("Ini Adalah isi Column 3"),
          ],
        )
      ],
    );
  }
}