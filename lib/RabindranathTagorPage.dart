import 'package:flutter/material.dart';

class RabindranathTagorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rabindranath Tagore'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Background Image Section
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/Rabindranath_pic.jpg'), // Replace with actual image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Container(
                    color: Colors.black54,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Rabindranath Tagore (1861 - 1941)',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            // Short Introduction
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Rabindranath Tagore was a Bengali poet, philosopher, musician, and playwright. '
                    'He was the first non-European to win the Nobel Prize in Literature in 1913 for his work *Gitanjali*. '
                    'His literary contributions have had a profound impact on Bengali culture and beyond.',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),

            // Highlighted Theme
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              color: Colors.brown[100],
              child: Column(
                children: [
                  Text(
                    'Highlighted Theme:',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Tagore’s works often explore **nature, spirituality, humanism, and nationalism**. '
                        'His poetry and music reflect deep philosophical and emotional insight.',
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Famous Works
            SizedBox(height: 20),
            Text(
              'Famous Works:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '• **Gitanjali** (Poetry Collection)\n'
                    '• **Gora** (Novel)\n'
                    '• **Chokher Bali** (Novel)\n'
                    '• **Kabuliwala** (Short Story)\n'
                    '• **Jana Gana Mana** (Indian National Anthem)',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            // Awards
            SizedBox(height: 20),
            Text(
              'Awards:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '• **Nobel Prize in Literature (1913)**\n'
                    '• **Knighthood (later renounced in protest)**\n'
                    '• **Honorary Doctorate from Oxford University**',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            // Famous Books Section
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Colors.brown[100],
              child: Column(
                children: [
                  Text(
                    'Famous Books:',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 10),

                  // Books with Circle Logos
                  Column(
                    children: [
                      bookItem(
                        'Gitanjali',
                        'lib/assets/images/gitanjali_logo.jpg', // Replace with actual image
                        'A collection of deeply spiritual poems, for which Tagore won the Nobel Prize.',
                      ),
                      bookItem(
                        'Gora',
                        'lib/assets/images/gora_logo.jpg', // Replace with actual image
                        'A novel that explores identity, nationalism, and self-discovery in colonial India.',
                      ),
                      bookItem(
                        'Chokher Bali',
                        'lib/assets/images/chokher_bali_logo.jpg', // Replace with actual image
                        'A novel about love, betrayal, and societal expectations in Bengali society.',
                      ),
                      bookItem(
                        'Kabuliwala',
                        'lib/assets/images/kabuliwala_logo.jpg', // Replace with actual image
                        'A touching short story about the bond between a little girl and an Afghan merchant.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to create a book item with a circle avatar
  Widget bookItem(String bookName, String imagePath, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
