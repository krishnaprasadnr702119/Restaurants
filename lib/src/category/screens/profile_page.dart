import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage('https://rb.gy/9y27kt'),
            ),
            SizedBox(height: 20),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.email, color: Colors.blueAccent),
              title: Text(
                'kp@inapp.com',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blueAccent),
              title: Text(
                '+918157807124',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blueAccent),
              title: Text(
                'New York, USA',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                'Edit Profile',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
