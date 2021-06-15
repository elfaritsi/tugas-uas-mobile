import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  int hasil = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: angka1,
                decoration: InputDecoration(hintText: "Masukkan angka pertama"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: angka2,
                decoration: InputDecoration(hintText: "Masukkan angka kedua"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  hasil.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (angka1.text != null && angka2.text != null) {
                        var total = int.tryParse(angka1.text) +
                            int.tryParse(angka2.text);
                        hasil = total;
                      }
                    });
                  },
                  child: Text("Hitung")),
              SizedBox(
                height: 30,
              ),

              Row(
                children: [
                  DataTable(
                    columns: [
                      DataColumn(label: Text("No")),
                      DataColumn(label: Text("Nama Barang")),
                    
                    ], 
                    rows: [
                      DataRow(cells: [
                        DataCell(Text("1")),
                        DataCell(Text("Sikat Gigi"))
                      ]),
                       DataRow(cells: [
                        DataCell(Text("2")),
                        DataCell(Text("Sabun Mandi"))
                      ]),
                       DataRow(cells: [
                        DataCell(Text("3")),
                        DataCell(Text("Handuk"))
                      ]),
                       DataRow(cells: [
                        DataCell(Text("4")),
                        DataCell(Text("Kipas Angin"))
                      ]),
                    ]
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
