import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'RabindranathTagorPage.dart';
import 'KaziNazrulIslamPage.dart';
import 'JasimudinPage.dart';
import 'SatyajitRayPage.dart';
import 'ShamsurRahmanPage.dart';
import 'HumayunAhmedPage.dart';
import 'BegumRokeyaPage.dart';
import 'ZahirRaihanPage.dart';
// okoiu8
class HomePage extends StatelessWidget {
  final List<Map<String, String>> writers = [
    {'name': 'Rabindranath Tagore', 'image': 'lib/assets/images/Rabindranath_pic.jpg', 'page': 'RabindranathTagorePage'},
    {'name': 'Kazi Nazrul Islam', 'image': 'lib/assets/images/kazi_Nazrul_pic.jpg', 'page': 'KaziNazrulIslamPage'},
    {'name': 'Jasimuddin', 'image': 'lib/assets/images/jasimuddin_pic.jpg', 'page': 'JasimuddinPage'},
    {'name': 'Satyajit Ray', 'image': 'lib/assets/images/satyajit_Ray_pic.jpg', 'page': 'SatyajitRayPage'},
    {'name': 'Shamsur Rahman', 'image': 'lib/assets/images/shamsur_Rahman_pic.jpg', 'page': 'ShamsurRahmanPage'},
    {'name': 'Humayun Ahmed', 'image': 'lib/assets/images/Humayun_ahmed_pic.jpg', 'page': 'HumayunAhmedPage'},
    {'name': 'Begum Rokeya', 'image': 'lib/assets/images/Begum_Rokeya_pic.jpg', 'page': 'BegumRokeyaPage'},
    {'name': 'Zahir Raihan', 'image': 'lib/assets/images/Jahir_Rayhan_pic.jpg', 'page': 'ZahirRaihanPage'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books App'),
        actions: [
          TextButton(
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(100.0, 50.0, 10.0, 10.0),
                items: [
                  PopupMenuItem<String>(value: 'Home', child: Text('Home')),
                  PopupMenuItem<String>(value: 'Browse Books', child: Text('Browse Books')),
                  PopupMenuItem<String>(value: 'Favorites', child: Text('Favorites')),
                  PopupMenuItem<String>(value: 'Search', child: Text('Search')),
                  PopupMenuItem<String>(value: 'Settings', child: Text('Settings')),
                ],
                elevation: 8.0,
              );
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.transparent,
            ),
            child: Row(
              children: [
                Image.asset('lib/assets/images/books_logo2.png', width: 24, height: 24),
                SizedBox(width: 8),
                Text('Menu', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Clickable Profile Section
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('lib/assets/images/profile_logo.jpg'),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ISRAT JAHAN CHADNI',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'ichadni113@gmail.com',
                          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Search bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search books...',
                  border: OutlineInputBorder(),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'lib/assets/images/search_books.jpg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // Featured Image
            Container(
              height: MediaQuery.of(context).size.height * 0.33,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/books_logo1.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Writers Section with Gray Background
            Container(
              color: Colors.grey[200], // Gray background added
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Famous Writers from Bangladesh',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // Writers buttons in 4 columns per row
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: writers.sublist(0, 4).map((writer) {
                            return Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white, // Keeping original shape
                                ),
                                onPressed: () {
                                  // Navigate to the writer's specific page
                                  if (writer['name'] == 'Rabindranath Tagore') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => RabindranathTagorePage()),
                                    );
                                  } else if (writer['name'] == 'Kazi Nazrul Islam') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => KaziNazrulIslamPage()),
                                    );
                                  } else if (writer['name'] == 'Jasimuddin') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => JasimuddinPage()),
                                    );
                                  } else if (writer['name'] == 'Satyajit Ray') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SatyajitRayPage()),
                                    );
                                  }
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(writer['image']!),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      writer['name']!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 16), // Space between rows
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: writers.sublist(4, 8).map((writer) {
                            return Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white, // Keeping original shape
                                ),
                                onPressed: () {
                                  // Navigate to the writer's specific page
                                  if (writer['name'] == 'Shamsur Rahman') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ShamsurRahmanPage()),
                                    );
                                  } else if (writer['name'] == 'Humayun Ahmed') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => HumayunAhmedPage()),
                                    );
                                  } else if (writer['name'] == 'Begum Rokeya') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BegumRokeyaPage()),
                                    );
                                  } else if (writer['name'] == 'Zahir Raihan') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ZahirRaihanPage()),
                                    );
                                  }
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(writer['image']!),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      writer['name']!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
