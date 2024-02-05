import 'package:belajar/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helpers.dart';

class ListNatureScreen extends StatelessWidget {
  final List<Map<String, dynamic>> natureData = [
    {
      "nama": "Banda Naira",
      "tempat": "Kepulauan Banda",
      "image": "images/neira.jpg",
      "desc": "Banda Tangah atau Banda Naira adalah salah satu pulau di Kepulauan Banda.Salah satu daya tarik utama Banda Neira adalah pemandangan Gunung Banda Api yang megah. Gunung berapi ini menambah pesona pulau dengan lerengnya yang hijau dan puncaknya yang membara. Topografi pulau ini cenderung datar, sehingga memungkinkan didirikannya kota kecil. Pulau Banda Neira memiliki kantor pemerintahan, toko, dermaga serta suatu lapangan terbang (atau bandara) disebut Bandar Udara Banda Neira. Penduduk pulau ini berjumlah 14,000 orang "
    },
    {
      "nama": "Nusa Peninda",
      "tempat": "Selatan Bali",
      "image": "images/peninda.webp",
      "desc": "Nusa Penida adalah sebuah pulau (nusa) bagian dari negara Republik Indonesia yang terletak di sebelah tenggara Bali yang dipisahkan oleh Selat Badung. Di dekat pulau ini terdapat juga pulau-pulau kecil lainnya yaitu Nusa Ceningan dan Nusa Lembongan.Perairan pulau Nusa Penida terkenal dengan kawasan selamnya di antaranya terdapat di Crystal Bay, Manta Point, Batu Meling, Batu Lumbung, Batu Abah, Toyapakeh dan Malibu Point."
    },
    {
      "nama": "Raja Ampat",
      "tempat": "Pulau Papua",
      "image": "images/raja.jpg",
      "desc": "Kabupaten Raja Ampat adalah salah satu kabupaten di provinsi Papua Barat Daya, Indonesia. Ibukota kabupaten ini terletak di Kota Waisai. Kabupaten ini memiliki 610 pulau, termasuk kepulauan Raja Ampat. Empat di antaranya, yakni Pulau Misool, Salawati, Batanta dan Waigeo, merupakan pulau-pulau besar. Dari seluruh pulau hanya 35 pulau yang berpenghuni sedangkan pulau lainnya tidak berpenghuni dan sebagian besar belum memiliki nama. Kabupaten ini memiliki total luas 67.379,60 km² dengan rincian luas daratan 7.559,60 km² dan luas lautan 59.820,00 km²."
    },
    {
      "nama": "Pink Labuan Bajo",
      "tempat": "Pulau Komodo",
      "image": "images/pinklabuan.jpg",
      "desc": "Pink Beach atau pantai pink yang berada di Labuan Bajo, Nusa Tenggara Timur, merupakan salah satu surga wisata di Indonesia. Dengan pasir yang berwarna pink dan birunya air laut, banyak wisatawan yang datang dari domestik maupun mancanegara.Pink Beach merupakan salah satu pulau yang berada di Pulau Komodo, Flores Barat, Nusa Tenggara Timur. Untuk datang kemari, kamu harus menempuh perjalanan darat dan laut karena letaknya yang ada di Pulau Komodo. Pantai ini berjarak 82 kilometer dari Kota Mataram. "
    },
    {
      "nama": "Hutan De Djawatan",
      "tempat": "Banyuwangi",
      "image": "images/hutan1.jpg",
      "desc": "De Djawatan adalah hutan wisata yang berlokasi di Benculuk, Cluring, Kabupaten Banyuwangi. Pepohonan di De Djawatan adalah trembesi yang dipenuhi dengan tumbuhan epifit. Pengunjung sering kali berfoto dengan latar pemandangan pepohonan ini.De Djawatan merupakan hutan alam yang memiliki luas sekitar 3,8 hektar dan berisi pohon trembesi yang mendominasi seluruh area. Pohon-pohon trembesi yang berada di De Djawatan itu sudah berusia ratusan tahun dan memiliki diameter mencapai 3 meter."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: natureData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailNatureScreen(
                              nama: natureData[index]["nama"],
                              tempat: natureData[index]["tempat"],
                              image: natureData[index]["image"],
                              desc: natureData[index]["desc"]),
                          ),
                        );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${natureData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                child: Text(
                  "${natureData[index]["nama"]} - ${natureData[index]["tempat"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                   ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}