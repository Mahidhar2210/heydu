import 'package:flutter/material.dart';
import 'package:simple_flutter/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  '${DateTime.now().hour}:${DateTime.now().minute}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.signal_cellular_alt),
                    Icon(Icons.wifi),
                    Icon(Icons.battery_full),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Hello! Register to get started',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'Urbanist'),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/logo.gif',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Positioned(
              top: 320,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE8ECF4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE8ECF4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '# Short name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE8ECF4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE8ECF4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Contact',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                ),
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}