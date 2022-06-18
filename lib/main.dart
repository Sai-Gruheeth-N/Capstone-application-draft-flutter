import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void alertBox() => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Alert!'),
            content: Text('This is an alertbox!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Continue'),
              ),
            ],
          ),
        );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tech Farms'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white, primary: Colors.teal),
                onPressed: () {},
                child: Text(
                  'Click here to capture image.',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            alertBox();
          });
        },
        child: Icon(Icons.message),
      ),
    );
  }
}
