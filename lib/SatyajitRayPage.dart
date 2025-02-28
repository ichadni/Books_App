import 'package:flutter/material.dart';

class SatyajitRayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Satyajit Ray'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background Image Section
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/satyajit_ray_pic.jpg'), // Replace with actual image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Writer Information
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Satyajit Ray (1921-1992) was a legendary Bengali filmmaker, screenwriter, and author. His films are widely regarded as some of the best in world cinema, and he is also known for his literary contributions, including detective stories and children\'s literature.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            // Highlighted Theme
            SizedBox(height: 20),
            Text(
              'Highlighted Theme:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              'Ray\'s films and literary works often focused on the complexities of human relationships, social issues, and the transformation of Indian society.',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.black),
            ),

            // Famous Works Section
            SizedBox(height: 20),
            Text(
              'Famous Works:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '• **Apu Trilogy** (Pather Panchali, Aparajito, Apur Sansar)\n'
                    '• **The Chess Player (Shatranj Ke Khiladi)**\n'
                    '• **The Adventures of Feluda** (Detective series)\n'
                    '• **Professor Shonku** (Science fiction series)',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            // Awards Section
            SizedBox(height: 20),
            Text(
              'Awards:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '• Honorary Academy Award (1992)\n'
                    '• Bharat Ratna (Posthumous)\n'
                    '• Padma Bhushan\n'
                    '• National Film Award (Multiple)\n'
                    '• Golden Lion for Lifetime Achievement (Venice Film Festival)',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            // Famous Books and Book Logos Section
            SizedBox(height: 20),
            Text(
              'Famous Books:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),

            // Book 1: Feluda Series
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/feluda_logo.jpg', // Replace with actual logo image
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '**Feluda Series**',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Book 2: Professor Shonku
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/professor_shonku_logo.jpg', // Replace with actual logo image
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '**Professor Shonku**',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
