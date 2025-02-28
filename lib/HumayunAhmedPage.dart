import 'package:flutter/material.dart';

class HumayunAhmedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Humayun Ahmed'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background Image Section
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/humayun_ahmed_pic.jpg'), // Replace with actual image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Writer Information
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Humayun Ahmed (1948-2012) was a renowned Bangladeshi writer, dramatist, and filmmaker. He is widely regarded as one of the most influential writers in Bengali literature. His work, often marked by humor and satire, spans novels, plays, and children\'s literature.',
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
              'Humayun Ahmed’s works are known for their portrayal of everyday life in Bangladesh, often combining the supernatural with the mundane.',
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
                '• **Himu Series**\n'
                    '• **Mishor Rahasya**\n'
                    '• **Nondini**\n'
                    '• **Kothao Keu Nei** (Film)',
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
                '• Ekushey Padak (2000)\n'
                    '• National Film Award (Multiple)\n'
                    '• Lifetime Achievement Award (Film)\n'
                    '• Bangla Academy Award for Literature',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            // Famous Books and Book Logos Section
            SizedBox(height: 20),
            Text(
              'Famous Books:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),

            // Book 1: Himu Series
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/himu_logo.jpg', // Replace with actual logo image
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '**Himu Series**',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Book 2: Mishor Rahasya
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/mishor_rahasya_logo.jpg', // Replace with actual logo image
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '**Mishor Rahasya**',
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
