import 'package:flutter/material.dart';
import 'package:mobile/loginpage.dart';
import 'package:mobile/profilepage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Solid background color
          Container(
            color: Colors.deepPurple[50], // Soft purple background color
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.home,
                  size: 100,
                  color: Colors.deepPurple,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Welcome to the Home Page!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    fontFamily: 'SFPro', // Use the custom font
                  ),
                ),
                SizedBox(height: 32.0),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  icon: Icon(Icons.login),
                  label: Text('Assignment 1: Login Page'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple, // Set background color
                    foregroundColor: Colors.white, // Set text color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SFPro', // Use the custom font
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  icon: Icon(Icons.person),
                  label: Text('Assignment 2: Profile Page'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple, // Set background color
                    foregroundColor: Colors.white, // Set text color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SFPro', // Use the custom font
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
