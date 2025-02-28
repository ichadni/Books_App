import 'package:flutter/material.dart';

class BegumRokeyaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Begum Rokeya'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('lib/assets/images/Begum_Rokeya_pic.jpg'),
            SizedBox(height: 16),
            Text(
              'Begum Rokeya',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Begum Rokeya was a pioneering Bengali feminist thinker and writer who advocated for women\'s education and empowerment.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            // Add more details about Begum Rokeya here
          ],
        ),
      ),
    );
  }
}
