import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // URL รูปภาพของโปรไฟล์
            ),
            SizedBox(height: 20),
            const Text(
              "Mr.Iwatto Shinryu",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(500, 50),
                foregroundColor: Colors.red,
                padding: EdgeInsets.all(16), // การจัดขนาด padding
                backgroundColor:
                    const Color.fromARGB(255, 0, 0, 0), // สีพื้นหลัง
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // ขอบมน
                ),
              ),
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Edit Profile'),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(500, 50),
                foregroundColor: Colors.red,
                padding: EdgeInsets.all(16), // การจัดขนาด padding
                backgroundColor:
                    const Color.fromARGB(255, 0, 0, 0), // สีพื้นหลัง
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // ขอบมน
                ),
              ),
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Setting'),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(500, 50),
                foregroundColor: Colors.red,
                padding: EdgeInsets.all(16), // การจัดขนาด padding
                backgroundColor:
                    const Color.fromARGB(255, 0, 0, 0), // สีพื้นหลัง
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // ขอบมน
                ),
              ),
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Log Out'),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(500, 50),
                foregroundColor: Colors.red,
                padding: EdgeInsets.all(16), // การจัดขนาด padding
                backgroundColor:
                    const Color.fromARGB(255, 0, 0, 0), // สีพื้นหลัง
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // ขอบมน
                ),
              ),
              onPressed: () {
                // โค้ดที่จะทำงานเมื่อปุ่มถูกกด
              },
              child: Text('Exit'),
            ),
          ],
        ),
      ),
    );
  }
}
