import 'package:flutter/material.dart';

class KaziNazrulIslamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kazi Nazrul Islam'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Writer's Image
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('lib/assets/images/kazi_Nazrul_pic.jpg'),
              ),
            ),
            SizedBox(height: 20),

            // Writer's Name
            Center(
              child: Text(
                'Kazi Nazrul Islam',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),

            // Writer's Biography
            Text(
              "Kazi Nazrul Islam (1899–1976) was a Bengali poet, writer, and musician. "
                  "He is known as the 'Rebel Poet' due to his powerful and revolutionary poetry. "
                  "His literary work includes poetry, novels, short stories, and songs that express "
                  "themes of love, freedom, and social justice.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),

            // List of Famous Books
            Text(
              'Famous Works:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            // Book List
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                bookItem('Bidrohi (The Rebel)'),
                bookItem('Agni Bina'),
                bookItem('Bisher Bashi'),
                bookItem('Dolan Chapa'),
                bookItem('Rikter Bedon'),
                bookItem('Samyabadi'),
              ],
            ),

            SizedBox(height: 20),

            // Quote Section
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    '"Love has no meaning, no reality, no feeling unless it is shared with someone else."',
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- Kazi Nazrul Islam',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to create a book item
  Widget bookItem(String bookName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.book, color: Colors.deepOrange),
          SizedBox(width: 8),
          Text(bookName, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
