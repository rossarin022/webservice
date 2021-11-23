import 'package:flutter/material.dart';
import 'package:miniproject/login/login.dart';
import 'package:miniproject/login/register.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHidden = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("เข้าสู่ระบบ"),
      ),
      body: new Container(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            new Image.asset("assets/images/2.1.jpg"),
            TextField(
              controller: _usernameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'username',
                hintText: 'xxxx@hotmail.com',
                icon: Icon(Icons.people_outlined),
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: isHidden,
              decoration: InputDecoration(
                labelText: 'password',
                icon: Icon(Icons.lock),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.add),
                label: Text("สร้างบัญชีผู้ใช้", style: TextStyle(fontSize: 15)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.login),
                label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 15)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} //end
