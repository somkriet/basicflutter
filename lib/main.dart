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
      theme: ThemeData(primarySwatch: Colors.pink),
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
          title: Text("เลือกเมนูอาหาร"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              Foodmenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา " + food.price + " บาท"),
                onTap: () {
                  print("คุณเลือกเมนูอาหารชื่อว่า = " + food.name);
                },
              );
            }));
  }
}
