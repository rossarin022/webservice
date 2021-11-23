import 'package:flutter/material.dart';


class TypeScreen extends StatefulWidget {
  @override
  _TypeScreenState createState() => _TypeScreenState();
}

class _TypeScreenState extends State<TypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ประเภทห้องเช่า'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Ink.image(
                  image: AssetImage('assets/image/leaf.jpg'),
                  fit: BoxFit.fill,
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),











        ]),
      ),
    );
  }
} //end class
