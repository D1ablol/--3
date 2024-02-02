import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Мистер Твистер'),
                accountEmail: Text('home@dartflutter.ru'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('О себе'),
                onTap: () {
                  // Обновите состояние приложения.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Настройки'),
                onTap: () {
                  // Обновите состояние приложения.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
