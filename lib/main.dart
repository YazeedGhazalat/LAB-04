import 'package:flutter/material.dart';
import 'package:myapp/Location.dart';
import 'package:myapp/RestMenu.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.fastfood),
        leadingWidth: 40,
        titleSpacing: 5,
        backgroundColor: Color.fromARGB(255, 255, 98, 0),
        title: Text(
          "Resturant",
          style: TextStyle(fontSize: 30),
        ),
        
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: NetworkImage(
                    scale: 2,
                    "https://upload.wikimedia.org/wikipedia/en/thumb/3/37/Just_Eat_Takeaway.com_icon_logo.svg/300px-Just_Eat_Takeaway.com_icon_logo.svg.png")),
            Padding(padding: EdgeInsets.all(20)),
            Column(
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 20,
                        side: BorderSide(
                            width: 3,
                            strokeAlign: StrokeAlign.outside,
                            color: Colors.black87),
                        fixedSize: Size(200, 70),
                        backgroundColor: Color.fromARGB(255, 255, 98, 0)),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RestMenu();
                        }));
                      });
                    },
                    icon: Icon(Icons.menu_book),
                    label: Text(
                      " Menu ",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                    )),
                Divider(),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 20,
                        side: BorderSide(
                            width: 3,
                            strokeAlign: StrokeAlign.outside,
                            color: Colors.black87),
                        fixedSize: Size(200, 70),
                        backgroundColor: Color.fromARGB(255, 255, 98, 0)),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Location();
                        }));
                      });
                    },
                    icon: Icon(Icons.place),
                    label: Text(
                      "Order Address",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
