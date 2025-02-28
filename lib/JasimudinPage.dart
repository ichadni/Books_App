import 'package:flutter/material.dart';

class JasimuddinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jasimuddin'),
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
                  image: AssetImage('lib/assets/images/jasimuddin_pic.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Writer Information
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Jasimuddin was a prominent Bengali poet, best known for his poems on rural life and the folk traditions of Bengal. '
                    'He was awarded the prestigious "Ekushey Padak" in 1976 and is known for his exploration of simple, earthy themes.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            // Famous Works Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Famous Works:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '1. **"Raat Bhor"** - A collection of poems focused on rural life.\n'
                    '2. **"Madhur Bhanga"** - His notable work depicting the essence of Bengali culture.\n'
                    '3. **"Nabajiban"** - A novel capturing the struggles of the poor and the downtrodden.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            // Awards Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Awards:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '1. Ekushey Padak (1976)\n'
                    '2. Bangla Academy Award (1962)\n'
                    '3. President’s Award for Pride (1980)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),

            // Books and Logos Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Famous Books:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Column(
              children: [
                // First Book Example
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/book_logo.jpg', // Example logo image for the book
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '**Raat Bhor**',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                // Second Book Example
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/book_logo.jpg', // Example logo image for the book
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '**Madhur Bhanga**',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                // Third Book Example
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/book_logo.jpg', // Example logo image for the book
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '**Nabajiban**',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
