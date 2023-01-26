import 'package:flutter/material.dart';
import 'main.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff444765),
        title: Text('Dashboard'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      body: Center(
        child: Text('Welcome to Neutrino App'),
      ),
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Neutrino App', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://static.wikia.nocookie.net/rickandmorty/images/c/c6/E8879297-B15A-4BF2-A246-AC19E057D482.jpeg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardPage(),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('Logout'),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }
}
