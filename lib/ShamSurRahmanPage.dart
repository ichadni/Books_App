import 'package:flutter/material.dart';

class ShamsurRahmanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shamsur Rahman'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('lib/assets/images/shamsur_Rahman_pic.jpg'),
            SizedBox(height: 16),
            Text(
              'Shamsur Rahman',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Shamsur Rahman was a prominent Bengali poet, known for his poetic works reflecting social concerns, modernism, and humanism.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            // Add more details about Shamsur Rahman here
          ],
        ),
      ),
    );
  }
}
