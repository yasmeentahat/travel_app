import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E5E5),
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('img/bar.jpg'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'yasmeen',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Mobile App Developer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('yasmeen@example.com'),
              onTap: () {
                // Handle email tap
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+123456789'),
              onTap: () {
                // Handle phone number tap
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('dsjksdf.com'),
              onTap: () {
                // Handle website tap
              },
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'I am a passionate mobile app developer with expertise in Flutter and UI/UX design. I love creating beautiful and functional applications that provide great user experiences.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
