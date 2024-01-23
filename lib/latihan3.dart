import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
      children: [
      Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: 
          NetworkImage("https://tse4.mm.bing.net/th?id=OIP.d7rVgiH627l_1TTXc7DTcwHaEo&pid=Api&P=0&h=180"),
          fit: BoxFit.fill),
          gradient: LinearGradient(
            colors:[Colors.black, Colors.red]
          ),
        borderRadius: BorderRadius.circular(10),
      ),
      ),
       Container(
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.pink,
        ),
        child: Row(
          children: [
            Container(
             width: 250,
             height: 250,
             margin: EdgeInsets.all(10),
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               image: DecorationImage(
               image: 
               NetworkImage("https://tse2.mm.bing.net/th?id=OIP.u5ju-32ZbNtK93p1rtovKAHaEK&pid=Api&P=0&h=180"),
               fit: BoxFit.fill),
        ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text(
                "Blackpink merupakan grup vokal wanita Korea yang memiliki lagu dengan posisi tertinggi di Billboard Hot 100, berada di nomor 55, dan di Billboard 200, berada di nomor 40 dengan EP berjudul Square Up. Blackpink merupakan grup pop Korea perempuan pertama dan satu-satunya yang memasuki dan memuncaki Emerging Artists Billboard.'Mereka juga merupakan grup pop Korea Selatan wanita pertama yang mempunyai empat lagu di Billboard World Digital Song Sales."
                , textAlign: TextAlign.right, style: TextStyle(color: Colors.white, fontSize: 10) ,),
            ),
          ],
        ),
      ),
      Text(
        "Galery"
      ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
               image: DecorationImage(
               image: 
               NetworkImage("https://tse3.mm.bing.net/th?id=OIP.1oAMec5K4aklJ_y2YRznKAHaEK&pid=Api&P=0&h=180"),
               fit: BoxFit.fill),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
               image: DecorationImage(
               image: 
               NetworkImage("https://1409791524.rsc.cdn77.org/data/images/full/567908/blackpink.jpg"),
               fit: BoxFit.fill),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
               image: DecorationImage(
               image: 
               NetworkImage("https://1409791524.rsc.cdn77.org/data/images/full/547312/blackpinks-coachella-stage-is-on-fire-when-will-the-fans-get-another-high-quality-performance.jpg"),
               fit: BoxFit.fill),
              ),
            ),
          ],
        )   
      ],
     ),
     
    );
    
  }
}