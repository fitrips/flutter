import 'package:flutter/material.dart';

class ListItem {
  final String imageUrl;
  final String aritikel;
  final String text;
  final String gallery;

  ListItem(this.imageUrl, this.aritikel, this.text, this.gallery);
}

class LatihanListView extends StatelessWidget {
  LatihanListView({super.key});

  final List<ListItem> itemList = [
    ListItem("https://tse2.mm.bing.net/th?id=OIP.u5ju-32ZbNtK93p1rtovKAHaEK&pid=Api&P=0&h=180", "Blackpink merupakan grup vokal wanita korea", "BlackPink", "https://tse3.mm.bing.net/th?id=OIP.1oAMec5K4aklJ_y2YRznKAHaEK&pid=Api&P=0&h=180"),
    ListItem("https://tse2.mm.bing.net/th?id=OIP.u5ju-32ZbNtK93p1rtovKAHaEK&pid=Api&P=0&h=180", "Profil BLACKPINK sering dikait dengan grup 2NE1.", "BlackPink", "https://1409791524.rsc.cdn77.org/data/images/full/567908/blackpink.jpg" ),
    ListItem("https://tse2.mm.bing.net/th?id=OIP.u5ju-32ZbNtK93p1rtovKAHaEK&pid=Api&P=0&h=180", "Member BLACKPINK yaitu Jennie,Jisso,Rose, dan Lisa", "BlackPink", "https://tse3.mm.bing.net/th?id=OIP.1oAMec5K4aklJ_y2YRznKAHaEK&pid=Api&P=0&h=180"),
    ListItem("https://tse2.mm.bing.net/th?id=OIP.u5ju-32ZbNtK93p1rtovKAHaEK&pid=Api&P=0&h=180", "Makna Blackpink bertujuan tentang warna pink", "BlackPink", "https://1409791524.rsc.cdn77.org/data/images/full/567908/blackpink.jpg" ),
    ListItem("https://tse2.mm.bing.net/th?id=OIP.u5ju-32ZbNtK93p1rtovKAHaEK&pid=Api&P=0&h=180", "Blackpink jadi salah satu grup penyanyi wanita asal Korea Selatan .", "BlackPink", "https://1409791524.rsc.cdn77.org/data/images/full/547312/blackpinks-coachella-stage-is-on-fire-when-will-the-fans-get-another-high-quality-performance.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                       "https://tse4.mm.bing.net/th?id=OIP.d7rVgiH627l_1TTXc7DTcwHaEo&pid=Api&P=0&h=180"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.separated(
                  itemCount: itemList.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 150,
                              height: 100,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      itemList[index].imageUrl
                                      ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 100, // Adjust the width as needed
                                  child: Text(
                                    itemList[index].aritikel,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
          Center(child: Text("Gallery Blackpink")),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 130,
                            height: 120,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                 itemList[index].gallery
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}