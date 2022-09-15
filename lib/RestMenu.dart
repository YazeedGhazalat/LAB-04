import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class RestMenu extends StatefulWidget {
  const RestMenu({super.key});

  @override
  State<RestMenu> createState() => _RestMenuState();
}

class _RestMenuState extends State<RestMenu> {
  @override
  String foodType = "";
  bool isCeck1 = false;
  bool isCeck2 = false;
  bool isCeck3 = false;
  List numOfP = ["1", '2', "3", "4", '5', '6', '7', '8', '9', '10'];
  String mySelectedNum = "1";
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu_book),
          title: const Text('First Route'),
          leadingWidth: 40,
          titleSpacing: 5,
          backgroundColor: Color.fromARGB(255, 255, 98, 0),
        ),
        body: ListView(children: [
          Container(
            alignment: Alignment.center,
            //color: Colors.red,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: NetworkImage(
                        "https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg")),
                Divider(),
                Text(
                  "Food Type:",
                  style: TextStyle(fontSize: 20),
                ),
                RadioListTile(
                    title: Text("Spicy"),
                    value: "Spicy",
                    groupValue: foodType,
                    onChanged: (val) {
                      setState(() {
                        foodType = val.toString();
                      });
                    }),
                RadioListTile(
                    title: Text("Regular"),
                    value: "Regular",
                    groupValue: foodType,
                    onChanged: (val) {
                      setState(() {
                        foodType = val.toString();
                      });
                    }),
                Divider(),
                Text(
                  "Additon:",
                  style: TextStyle(fontSize: 20),
                ),
                CheckboxListTile(
                  title: Text("Soda"),
                  value: isCeck1,
                  secondary: Image(
                      height: 150,
                      width: 150,
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/09/12/18/20/can-443123__340.png")),
                  onChanged: ((value) {
                    setState(() {
                      isCeck1 = value!;
                    });
                  }),
                ),
                CheckboxListTile(
                  title: Text("Fries"),
                  secondary: Image(
                      height: 150,
                      width: 150,
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2013/11/08/05/49/hamburger-207295__340.jpg")),
                  value: isCeck2,
                  onChanged: ((value) {
                    setState(() {
                      isCeck2 = value!;
                    });
                  }),
                ),
                CheckboxListTile(
                  secondary: Image(
                      height: 150,
                      width: 150,
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2021/06/30/20/31/cheese-6377662__340.jpg")),
                  title: Text("Cheese"),
                  value: isCeck3,
                  onChanged: ((value) {
                    setState(() {
                      isCeck3 = value!;
                    });
                  }),
                ),
                Divider(),
                Divider(),
                Text(
                  "Number of pieces:",
                  style: TextStyle(fontSize: 20),
                ),
                DropdownButton(
                    value: mySelectedNum,
                    items: numOfP
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text("$e")))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        mySelectedNum = val.toString();
                        print(mySelectedNum);
                      });
                    }),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.attach_money),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  label: Text(
                    "Buy",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Divider(),
                ElevatedButton.icon(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    });
                  },
                  icon: Icon(
                    Icons.home,
                  ),
                  label: Text(
                    "Go Back",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
