import 'package:flutter/material.dart';

import 'Setting_profile.dart';

void main() {
  runApp(SettingProfile1());
}

class SettingProfile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> countries = ["Select Country", "Country 1", "Country 2", "Country 3"];
  final List<String> states = ["Select State", "State 1", "State 2", "State 3"];

  String? selectedCountry = "Select Country";
  String? selectedState = "Select State";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("9:41", style: TextStyle(fontSize: 18)),
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_alt, size: 18),
                      SizedBox(width: 6),
                      Icon(Icons.wifi, size: 18),
                      SizedBox(width: 6),
                      Icon(Icons.battery_full, size: 18),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SettingProfile()),
                          );
                        },
                        child: Text("Cancel", style: TextStyle(color: Color(0xFF2D60FF))),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB9DCF7),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SettingProfile()),
                          );
                        },
                        child: Text("Save", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Color(0xFF5A62FF),
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2),
                              ),
                              child: Icon(Icons.edit, color: Colors.white, size: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  buildTextField("University", Color(0xFFF7F8F9), Color(0xFF232323)),
                  buildTextField("Short name", Color(0xFFF7F8F9), Color(0xFF232323)),
                  buildTextField("jondoe@email.com", Color(0xFFF7F8F9), Color(0xFF232323)),
                  buildTextField("+91 987654321", Color(0xFFF7F8F9), Color(0xFF232323)),
                  buildDropdownButton(selectedCountry, countries, (newValue) {
                    setState(() {
                      selectedCountry = newValue;
                    });
                  }, Color(0xFFF7F8F9), Color(0xFF8391A1)),
                  buildDropdownButton(selectedState, states, (newValue) {
                    setState(() {
                      selectedState = newValue;
                    });
                  }, Color(0xFFF7F8F9), Color(0xFF8391A1)),
                  buildTextArea("Description", Color(0xFFF7F8F9), Color(0xFF8391A1), 3),
                  buildTextField("LANDMARK", Color(0xFFF7F8F9), Color(0xFF8391A1)),
                  buildTextField("ROAD / AREA (OPTIONAL)", Color(0xFFF7F8F9), Color(0xFF8391A1)),
                  buildTextField("CITY", Color(0xFFF7F8F9), Color(0xFF8391A1)),
                  buildTextField("STATE", Color(0xFFF7F8F9), Color(0xFF8391A1)),
                  buildTextField("COUNTRY", Color(0xFFF7F8F9), Color(0xFF8391A1)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText, Color fillColor, Color textColor) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: textColor),
          fillColor: fillColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  Widget buildTextArea(String hintText, Color fillColor, Color textColor, int maxLines) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: textColor),
          fillColor: fillColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE8ECF4)),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  Widget buildDropdownButton(String? selectedItem, List<String> items, ValueChanged<String?> onChanged, Color bgColor, Color textColor) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
    child: DropdownButtonFormField<String>(
    value: selectedItem,
    items: items.map((String item) {
    return DropdownMenuItem<String>(
    value: item,
    child: Text(item, style: TextStyle(color: textColor)),
    );
    }).toList(),
    onChanged: onChanged,
    decoration: InputDecoration(
    fillColor: bgColor,
    filled: true,
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFE8ECF4)),
      borderRadius: BorderRadius.circular(8.0),
    ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFE8ECF4)),
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    ),
    );
  }
}

