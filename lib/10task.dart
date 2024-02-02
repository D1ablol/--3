import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter SnackBar Demo')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('Hey! This is a SnackBar message.'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Show SnackBar'),
          ),
        ),
      ),
    );
  }
}
