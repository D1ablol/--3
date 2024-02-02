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
  String _gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RadioListTile<String>(
          title: const Text('Male'),
          value: 'Male',
          groupValue: _gender,
          onChanged: (String? value) {
            setState(() {
              _gender = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Female'),
          value: 'Female',
          groupValue: _gender,
          onChanged: (String? value) {
            setState(() {
              _gender = value!;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            _gender == 'Male' ? 'Hello gentlemen!' : 'Hello ladies!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}
