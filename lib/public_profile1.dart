import 'package:flutter/material.dart';
import 'package:simple_flutter/public_profile12.dart';

void main() => runApp(PublicProfile1());

class PublicProfile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Status bar
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 8, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12:30',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(Icons.signal_cellular_alt, color: Colors.black),
                    SizedBox(width: 8),
                    Icon(Icons.wifi, color: Colors.black),
                    SizedBox(width: 8),
                    Icon(Icons.battery_full, color: Colors.black),
                  ],
                ),
              ],
            ),
          ),
          // App bar with title
          AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Image.asset(
              'assets/heydu.jpg',
              height: 40,
            ),
          ),
          // Cover image section
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/cover1.jpg',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: -60,
                left: 16,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/profile1.jpg'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.more_vert, color: Color(0xFF232323),),
                          onPressed: () {
                            // menu
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                Text(
                  "B Varun Gupta",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF232323),
                  ),
                ),
                Text(
                  "#varun32",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF687684),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Computer Science Engineering",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF2D60FF),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Color(0xFF3F3F3F)),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Aditya University",
                        style: TextStyle(fontSize: 16, color: Color(0xFF3F3F3F)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "Kakinada, Andhra Pradesh , India",
                  style: TextStyle(fontSize: 16, color: Color(0XFF7C7C7C)),
                ),
                SizedBox(height: 12),
                Text(
                  "200+ Followers",
                  style: TextStyle(fontSize: 16, color: Color(0XFF7C7C7C)),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF2D60FF),
                      padding: EdgeInsets.symmetric(horizontal: 160, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PublicProfile1Output()),
                      );
                    },
                    child: Text(
                      "Follow +",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}