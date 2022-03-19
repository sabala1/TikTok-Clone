import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';
import 'package:tiktok_clone/views/widgets/custom_icon.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        //กดปุ่มไหน ปุ่มนั้นเปลี่ยนสี
          onTap: (idx) {
            setState(() {
              pageIdx = idx;
            });
          },
          type: BottomNavigationBarType.fixed, //ขยับปุ่มเข้าที่เข้าทาง
          backgroundColor: backgroundColor, //ทำแถบให้สีกลมกลืนพื้นหลัง
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          currentIndex: pageIdx, //bottom tab bar
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: 'Search',
            ),

            //ปุ่ม + ตรงกลาง
            BottomNavigationBarItem(
              icon: CustomIcon(),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.message, size: 30),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: 'Profile',
            ),
          ]),
      body: pages[pageIdx], //แสดงหน้านั้น เมื่อกดปุ่มนั้น เรียงลำดับตาม pagesที่กำหนด
    );
  }
}
