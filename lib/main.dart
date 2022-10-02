import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: 'E_Notice_Board',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('III CSE G2')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
                child: Text(
                  'Dhanaseelan V',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
              ListTile(
                title: const Text('Class'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                title: const Text('Department'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                  title: const Text('College'),
                  onTap: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
        body: Center(
          child: Container(
            width: 700,
            height: 350,
            color: Colors.white,
            child: Image.asset('images/board.png', fit: BoxFit.cover),
          ),
        ));
  }
}
