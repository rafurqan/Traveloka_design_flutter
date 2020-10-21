
import 'package:first_with_flutter/pages/inbox.dart';
import 'package:first_with_flutter/pages/awal.dart';
import 'package:first_with_flutter/pages/pesanan.dart';
import 'package:first_with_flutter/pages/profile.dart';
import 'package:first_with_flutter/pages/simpan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Traveloka'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _layoutPage = [Awal(), Simpan(), Pesanan(), Inbox(), Profile()];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Awal')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.save),
              title: Text('Save')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_agenda),
              title: Text('Pesanan')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.inbox),
              title: Text('Inbox')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Akun Saya')
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}

