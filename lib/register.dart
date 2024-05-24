import 'package:flutter/material.dart';
import 'package:simple_flutter/main.dart';
import 'package:simple_flutter/profile.dart';

void main() {
  runApp(Register());
}

class Register extends StatelessWidget {
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
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                    ),
                    Text(
                      'Your University',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'Urbanist'),
                    ),
                    SizedBox(width: 40), // Adjust the spacing
                  ],
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Select Country',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Color(0xFFE8ECF4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              suffixIcon: Icon(Icons.arrow_drop_down, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Select State',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Color(0xFFE8ECF4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              suffixIcon: Icon(Icons.arrow_drop_down, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            maxLines: 3, // Increase the number of lines for the description
                            decoration: InputDecoration(
                              labelText: 'Description',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Color(0xFFE8ECF4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Landmark',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Color(0xFFE8ECF4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Road / Area (Optional)',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Color(0xFFE8ECF4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'City',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Color(0xFFE8ECF4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'State',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Color(0xFFE8ECF4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Country',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Color(0xFFE8ECF4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                  MaterialPageRoute(builder: (context) => Profile()),
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
