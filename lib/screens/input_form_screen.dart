import 'package:belajar/helpers/size_helpers.dart';
import 'package:belajar/screens/output_form_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingNature extends StatefulWidget {
  const BookingNature({super.key});

  @override
  State<BookingNature> createState() => _BookingNatureState();
}

class _BookingNatureState extends State<BookingNature> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskrisikan variabel input
  TextEditingController namaCotroller = TextEditingController();
  String _pilihTujuan = "";
  TextEditingController jumlahCotroller = TextEditingController();
  TextEditingController tglPergiCotroller = TextEditingController();

  final List<String> tujuan = [
    "Banda Naira",
    "Nusa Peninda",
    "Raja Ampat",
    "Pink Labuan Bajo",
    "Hutan De Djawatan",
  ];

  void iniState() {
    tglPergiCotroller.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Formulir Nature",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: namaCotroller,
                            decoration: InputDecoration(
                              hintText: "Nama Lengkap",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Nama';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                hintText: "Tujuan",
                                labelText: "Pilih Tujuan",
                                border: OutlineInputBorder()),
                            items: tujuan.map((String items) {
                              int index = 0;
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _pilihTujuan = newValue!;
                              });
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: jumlahCotroller,
                            decoration: InputDecoration(
                              hintText: "Jumlah Tiket",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Jumlah Tiket';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: tglPergiCotroller,
                            decoration: InputDecoration(
                              hintText: "Tanggal Berangkat",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Tanggal Berangkat';
                              }
                              return null;
                            },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                String tgl =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                setState(() {
                                  tglPergiCotroller.text = tgl;
                                });
                              } else {
                                print("tanggal tidak dipilih");
                              }
                            },
                          ),
                          SizedBox(height: 18),
                          SizedBox(
                            width: displayWidth(context) * 0.8,
                            height: displayHeight(context) * 0.075,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                              child: Text(
                                "Simpan",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                _submit();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _showAlertDialog(context);
      _formKey.currentState!.save();
    }
  }

  void _showAlertDialog(BuildContext context){
    showCupertinoModalPopup<void>(
      context: context, 
      builder: (BuildContext context) => 
      CupertinoAlertDialog(
        title: const Text('Alert'),
        content: const Text('Apakah anda sudah yakin?'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Tidak"),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              int harga = 0;
              String img = "";
              String nama = namaCotroller.text;
              String tglPergi = tglPergiCotroller.text;
              String jumlah = jumlahCotroller.text;
              String tujuan = _pilihTujuan;
              if (tujuan == "Banda Neira"){
                harga = 6000000;
                img = "images/neira.jpg";
              } else if (tujuan == "Nusa Peninda"){
                harga = 4000000;
                img = "images/peninda.webp";
              } else if (tujuan == "Raja Ampat"){
                harga = 7000000;
                img = "images/raja.jpg";
              }
              else if (tujuan == "Pink Labuan Bajo"){
                harga = 3000000;
                img = "images/pinklabuan.jpg";
              }
              else if (tujuan == "Hutan De Djawatan"){
                harga = 400000;
                img = "images/hutan.jpg";
              }
              
              int totalHarga = harga * int.parse(jumlah);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OutputBookingScreen(
                      nama: nama, jumlah: jumlah, tglPergi: tglPergi, tujuan: tujuan, harga: harga.toString(), totalHarga: totalHarga.toString(), img: img),
                ),
              );
            },
            child: const Text("Ya"),
          )
        ],
      ),
      );
  }
  }