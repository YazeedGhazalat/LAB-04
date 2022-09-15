import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String mySelectedArea = "Irbid";
  List area = ["Irbid", 'Amman', "Ajloun"];
  String mySelectedAddressType = "House";
  List addTypes = ["House", 'Apartment', "Office"];
  String mySelectedAreacode = "+962";
  List areacode = ["+962", '+961', "+1"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.place,
        ),
        leadingWidth: 40,
        titleSpacing: 5,
        backgroundColor: Color.fromARGB(255, 255, 98, 0),
        title: const Text('Order Address'),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            // color: Colors.red,

            child: Column(
              children: [
                Image(
                    image: NetworkImage(
                        "https://www.nicepng.com/png/detail/24-244464_store-location-icon-png-download-orange-address-icon.png")),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      "Area: ",
                      style: TextStyle(fontSize: 20),
                    ),
                    DropdownButton(
                        value: mySelectedArea,
                        items: area
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text("$e")))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            mySelectedArea = val.toString();
                            print(mySelectedArea);
                          });
                        }),
                    Divider(),
                    Text(
                      "Address Type: ",
                      style: TextStyle(fontSize: 20),
                    ),
                    DropdownButton(
                        value: mySelectedAddressType,
                        items: addTypes
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text("$e")))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            mySelectedAddressType = val.toString();
                            print(mySelectedAddressType);
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "  Phone number: ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    DropdownButton(
                        value: mySelectedAreacode,
                        items: areacode
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text("$e")))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            mySelectedAreacode = val.toString();
                            print(mySelectedAreacode);
                          });
                        }),
                  ],
                ),
                TextFormField(
                  
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    labelText: 'Enter your phone Number',
                  ),
                ),
                Divider(),
                   ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.save),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  label: Text(
                    "Save",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Divider(),
                ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber)),
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
        ],
      ),
    ));
  }
}
