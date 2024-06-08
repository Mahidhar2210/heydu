import 'package:flutter/material.dart';
import 'package:simple_flutter/public_profile21.dart';

void main() {
  runApp(PublicProfile2Output());
}

class PublicProfile2Output extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Track the state of each post individually
  bool isLiked1 = false;
  bool isLiked2 = false;
  bool isLiked3 = false;
  bool isLiked4 = false;
  bool isBookmarked1 = false;
  bool isBookmarked2 = false;
  bool isBookmarked3 = false;
  bool isBookmarked4 = false;


  // Method to toggle the like state of the first post
  void _toggleLike1() {
    setState(() {
      isLiked1 = !isLiked1;
    });
  }

  // Method to toggle the bookmark state of the first post
  void _toggleBookmark1() {
    setState(() {
      isBookmarked1 = !isBookmarked1;
    });
  }

  // Method to toggle the like state of the second post
  void _toggleLike2() {
    setState(() {
      isLiked2 = !isLiked2;
    });
  }

  // Method to toggle the bookmark state of the second post
  void _toggleBookmark2() {
    setState(() {
      isBookmarked2 = !isBookmarked2;
    });
  }

  void _toggleBookmark3() {
    setState(() {
      isBookmarked3 = !isBookmarked3;
    });
  }

  // Method to toggle the like state of the second post
  void _toggleLike3() {
    setState(() {
      isLiked3 = !isLiked3;
    });
  }

  void _toggleLike4() {
    setState(() {
      isLiked4 = !isLiked4;
    });
  }

  // Method to toggle the bookmark state of the first post
  void _toggleBookmark4() {
    setState(() {
      isBookmarked4 = !isBookmarked4;
    });
  }

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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Cover image section
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        'assets/cover2.jpg',
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
                            backgroundImage: AssetImage('assets/profile2.jpg'),
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
                          "Manipal University",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF232323),
                          ),
                        ),
                        Text(
                          "#Manipaluj",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF687684),
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Color(0xFF3F3F3F)),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Jaipur",
                                style: TextStyle(fontSize: 16, color: Color(0xFF3F3F3F)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          "50+ followers, 20k Alumni",
                          style: TextStyle(fontSize: 16, color: Color(0XFF7C7C7C)),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                color: Color(0XFF2D60FF),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 160, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PublicProfile2()),
                              );
                            },
                            child: Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0XFF2D60FF),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        // New Section After "Follow" Button
                        Column(
                          children: [
                            // Tab bar with "Posts" and "Pinned"
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Posts',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Pinned',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                            // First post
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage('assets/profile.jpg'),
                                      ),
                                      title: Text(
                                        'Student 1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "Computer Science",
                                        style: TextStyle(
                                          color: Color(0XFF2D60FF), // Change color here
                                        ),
                                      ),

                                      trailing: IconButton(
                                        icon: Icon(Icons.more_vert),
                                        onPressed: () {
                                          // Add your onPressed function here
                                        },
                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Text(
                                      'Hackathon held yesterday in seminar hall -2',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),),
                                  ),
                                  SizedBox(height: 10),
                                  GridView.count(
                                    shrinkWrap: true,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 4.0,
                                    mainAxisSpacing: 4.0,
                                    childAspectRatio: 2,
                                    children: List.generate(4, (index) {
                                      return Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/p${index + 1}.jpg',
                                                fit: BoxFit.cover,
                                                width: double.infinity,
                                                height: double.infinity,
                                              ),
                                              if (index == 3)
                                                Container(
                                                  color: Colors.black.withOpacity(0.5),
                                                  child: Center(
                                                    child: Text(
                                                      '+3',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  ),

                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              isLiked1
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color:
                                              isLiked1 ? Colors.red : null,
                                            ),
                                            onPressed: _toggleLike1,
                                          ),
                                          Text('217'),
                                          SizedBox(width: 16),
                                          IconButton(
                                            icon: Icon(Icons.comment),
                                            onPressed: () {},
                                          ),
                                          Text('45'),
                                        ],
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          isBookmarked1
                                              ? Icons.bookmark
                                              : Icons.bookmark_border,
                                          color: isBookmarked1
                                              ? Colors.black
                                              : null,
                                        ),
                                        onPressed: _toggleBookmark1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                            // Second post
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage('assets/profile.jpg'),
                                      ),
                                      title: Text(
                                        'Sandeep',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "Mechanical",
                                        style: TextStyle(
                                          color: Color(0XFF2D60FF), // Change color here
                                        ),
                                      ),
                                      trailing: IconButton(
                                        icon: Icon(Icons.more_vert),
                                        onPressed: () {
                                          // Add your onPressed function here
                                        },
                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Text('Exam Day',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    // Border radius of 16 degrees
                                    child: Image.asset(
                                      'assets/p3.jpg',
                                      fit: BoxFit.cover,
                                      width: 500,
                                      height: 250,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              isLiked2
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color:
                                              isLiked2 ? Colors.red : null,
                                            ),
                                            onPressed: _toggleLike2,
                                          ),
                                          Text('217'),
                                          SizedBox(width: 16),
                                          IconButton(
                                            icon: Icon(Icons.comment),
                                            onPressed: () {},
                                          ),
                                          Text('45'),
                                        ],
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          isBookmarked2
                                              ? Icons.bookmark
                                              : Icons.bookmark_border,
                                          color: isBookmarked2
                                              ? Colors.black
                                              : null,
                                        ),
                                        onPressed: _toggleBookmark2,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                            // First post
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage('assets/profile.jpg'),
                                      ),
                                      title: Text(
                                        'Student 1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "Computer Science",
                                        style: TextStyle(
                                          color: Color(0XFF2D60FF), // Change color here
                                        ),
                                      ),
                                      trailing: IconButton(
                                        icon: Icon(Icons.more_vert),
                                        onPressed: () {
                                          // Add your onPressed function here
                                        },
                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child:Text(
                                      'Hackathon held yesterday in seminar hall -2',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),),
                                  ),
                                  SizedBox(height: 10),
                                  GridView.count(
                                    shrinkWrap: true,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 4.0,
                                    mainAxisSpacing: 4.0,
                                    childAspectRatio: 2,
                                    children: List.generate(4, (index) {
                                      return Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/p${index + 1}.jpg',
                                                fit: BoxFit.cover,
                                                width: double.infinity,
                                                height: double.infinity,
                                              ),
                                              if (index == 3)
                                                Container(
                                                  color: Colors.black.withOpacity(0.5),
                                                  child: Center(
                                                    child: Text(
                                                      '+3',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  ),

                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              isLiked3
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color:
                                              isLiked3 ? Colors.red : null,
                                            ),
                                            onPressed: _toggleLike3,
                                          ),
                                          Text('217'),
                                          SizedBox(width: 16),
                                          IconButton(
                                            icon: Icon(Icons.comment),
                                            onPressed: () {},
                                          ),
                                          Text('45'),
                                        ],
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          isBookmarked3
                                              ? Icons.bookmark
                                              : Icons.bookmark_border,
                                          color: isBookmarked3
                                              ? Colors.black
                                              : null,
                                        ),
                                        onPressed: _toggleBookmark3,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage('assets/profile.jpg'),
                                      ),
                                      title: Text(
                                        'Srinivas',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "Computer Science",
                                        style: TextStyle(
                                          color: Color(0XFF2D60FF), // Change color here
                                        ),
                                      ),
                                      trailing: IconButton(
                                        icon: Icon(Icons.more_vert),
                                        onPressed: () {
                                          // Add your onPressed function here
                                        },
                                      )

                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 10),
                                      child:Text(
                                        'Dear Students,\n'
                                            'We would like to inform you that tomorrow\'s CSE '
                                            'Cybersecurity exam has been postponed. Please '
                                            'note the change in schedule and stay tuned for '
                                            'further updates regarding the new exam date '
                                            'and any additional information. We apologize for '
                                            'any inconvenience this may cause and '
                                            'appreciate your understanding.',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      )


                                  ),


                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              isLiked4
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color:
                                              isLiked4 ? Colors.red : null,
                                            ),
                                            onPressed: _toggleLike4,
                                          ),
                                          Text('217'),
                                          SizedBox(width: 16),
                                          IconButton(
                                            icon: Icon(Icons.comment),
                                            onPressed: () {},
                                          ),
                                          Text('45'),
                                        ],
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          isBookmarked4
                                              ? Icons.bookmark
                                              : Icons.bookmark_border,
                                          color: isBookmarked4
                                              ? Colors.black
                                              : null,
                                        ),
                                        onPressed: _toggleBookmark4,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                            SizedBox(height: 30),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
