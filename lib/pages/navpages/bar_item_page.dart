import 'package:flutter/material.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
            Text(
              'to the Bar',
              style: TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'img/bar.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Popular Drinks',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildDrink('Mojito', 'img/bar.jpg'),
                  _buildDrink('Old Fashioned', 'img/bar.jpg'),
                  _buildDrink('Cosmopolitan', 'img/bar.jpg'),
                  _buildDrink('Martini', 'img/bar.jpg'),
                ],
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle button tap
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF212121),
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('See Full Menu'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrink(String name, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
