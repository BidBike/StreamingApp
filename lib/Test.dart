import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // URL รูปภาพของโปรไฟล์
            ),
            SizedBox(height: 20),
            const Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'john.doe@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '120',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '200',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '180',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Outlined Button'),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
            ),
            FloatingActionButton(
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Icon(Icons.add),
            ),
            CupertinoButton(
              child: Text('Cupertino Button'),
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // สีข้อความ
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Customized Elevated Button'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red, padding: EdgeInsets.all(16),
                backgroundColor: Colors.yellow, // สีพื้นหลัง
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Customized Text Button'),
            )
          ],
        ),
      ),
    );
  }
}
