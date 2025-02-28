import 'package:flutter/material.dart';

class ZahirRaihanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zahir Raihan'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('lib/assets/images/Jahir_Rayhan_pic.jpg'),
            SizedBox(height: 16),
            Text(
              'Zahir Raihan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Zahir Raihan was a famous Bangladeshi filmmaker, writer, and novelist. He is known for his contributions to both literature and cinema.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            // Add more details about Zahir Raihan here
          ],
        ),
      ),
    );
  }
}
