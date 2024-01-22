import 'package:flutter/material.dart';

//container adalah wadah untuk menampung widget lain
class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[Colors.cyanAccent, Colors.indigoAccent],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
      width: 100,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[Colors.pink, Colors.red],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
      width: 100,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[Colors.black, Colors.orange],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
      width: 100,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: 
          NetworkImage("https://tse4.mm.bing.net/th?id=OIP.o7rrBDsxd0Sp1p9vrlGgbAHaE4&pid=Api&P=0&h=180"),
          fit: BoxFit.fill),
          gradient: LinearGradient(
            colors:[Colors.black, Colors.red]
          ),
        borderRadius: BorderRadius.circular(10),
      ),
        ),
        ),
        ),
    );
  }
}