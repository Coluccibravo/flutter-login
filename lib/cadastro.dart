import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController _controller1 = new TextEditingController();
TextEditingController _controller2 = new TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login!"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            Icon(Icons.lock_person_outlined, size: 140),
            SizedBox(height: 70),
            Text(
              "Login!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 70),
            Container(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Column(
                children: [
                  
                  TextField(
                    controller: _controller1,
                    decoration: InputDecoration(
                      label: Text("Nome do Usuario:"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 70),
                  TextField(
                    controller: _controller2,
                    decoration: InputDecoration(
                      label: Text("Senha do Usuario:"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
