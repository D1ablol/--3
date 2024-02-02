import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Kindacode.com')),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final Map<String, bool> _hobbies = {
    'Football': false,
    'Baseball': false,
    'Video Games': false,
    'Reading Books': false,
    'Surfing The Internet': false,
  };

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _hobbies.keys.map((String key) {
        return CheckboxListTile(
          title: Text(key),
          value: _hobbies[key],
          onChanged: (bool? value) {
            setState(() {
              _hobbies[key] = value!;
            });
          },
        );
      }).toList(),
    );
  }
}
