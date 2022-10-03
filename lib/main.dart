import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E_Notice_Board',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
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
        body: Stack(
          children: [
            Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: Image.asset('images/board.png', fit: BoxFit.fill),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
              child: FloatingActionButton(
                  onPressed: () {}, child: Icon(Icons.add_rounded)),
            ),
          ],
        ));
  }
}
