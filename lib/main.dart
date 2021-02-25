import 'package:flutter/material.dart';
import 'Foodmenu.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

//fff
//สร้าง widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //กลุ่มข้อมูล
  List<Foodmenu> menu = [
    Foodmenu("กุ้งเผา", "500", "assets/images/picture1.jpg"),
    Foodmenu("กะเพราหมู", "80", "assets/images/picture2.jpg"),
    Foodmenu("ส้มตำ", "60", "assets/images/picture3.jpg"),
    Foodmenu("ผัดไทย", "40", "assets/images/picture4.jpg")
  ];

  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                height: 120,
                child: Row(
                  children: [
                    Text("ยอดคงเหลือ"),
                    Text(
                      "15,000",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //       color: Colors.lightBlue,
              //       borderRadius: BorderRadius.circular(10)),
              //   height: 100,
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //       color: Colors.yellow,
              //       borderRadius: BorderRadius.circular(10)),
              //   height: 100,
              // )
            ],
          ),
        ));
  }
}
