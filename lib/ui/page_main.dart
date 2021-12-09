import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:capstone_project/ui/ui_main/home_page.dart';
import 'package:capstone_project/ui/ui_main/favorite_page.dart';
import 'package:capstone_project/ui/ui_main/about_page.dart';
import 'package:capstone_project/ui/ui_main/search_page.dart';

class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "Pencarian",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_circle_fill),
            label: "Favorit",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.wrench),
            label: "Pengaturan",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return HomePage(items: List<String>.generate(3, (i) => 'Item $i'));
          case 1:
            return SearchPage();
          case 2:
            return FavoritePage(items: List<String>.generate(3, (i) => 'Item $i'));
          case 3:
            return SettingsPage();
          default:
            return const Center(
              child: Text('Page not found!'),
            );
        }
      },
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text("About"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}