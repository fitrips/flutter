import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Jennie"),
                FlutterLogo(size: 50,)
              ],
            ),
            Column(
              children: [
                Text("Jisso"),
                FlutterLogo(size: 50,)
              ],
            ),
            
          ],
        ),
        FlutterLogo(size: 50,),
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Lisa"),
                FlutterLogo(size: 50,)
              ],
            ),
            Column(
              children: [
                Text("Rose"),
                FlutterLogo(size: 50,)
              ],
            )
            
          ],
        )
      ],
    );
  }
}