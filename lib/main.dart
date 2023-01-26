import 'package:flutter/material.dart';
import 'register.dart';
import 'dashboardPage.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Neutrino App',
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/second': (context) => RegisterPage(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff1C315E),
        body: Padding(
          padding:
              EdgeInsets.only(top: 50.0, bottom: 50.0, left: 50.0, right: 50.0),
          child: Center(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff344D67),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text('Neutrino App',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffE6E2C3),
                          fontSize: 42)),
                  SizedBox(height: 20),
                  Column(children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      controller: usernameController,
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )),
                        obscureText: true,
                        controller: passwordController,
                        style: TextStyle(color: Colors.white)),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff227C70),
                                backgroundColor: Color(0xff227C70),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DashboardPage()),
                                );
                              },
                            )),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextButton(
                              child: Text(
                                "Not have an account? Let's REGISTER!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
