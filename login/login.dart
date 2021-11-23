import 'package:flutter/material.dart';
import 'package:miniproject/login/AppRoute.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('เมนู'),
                accountEmail: Text(''),
              ),
              ListTile(
                title: Text('ประเภทห้องเช่า'),
                onTap: () {
                  Navigator.pushNamed(context, AppRoute.typeRoute);
                },
              ),
              ListTile(
                title: Text('เปรียบเทียบราคาห้องเช่า'),
                onTap: () {},
              ),
              Divider(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    title: Text('ลงชื่อเข้าใช้'),
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.registerRoute);
                    },
                  ),
                ),
              ),
            ]),
      ),
    );
  }
} //end
