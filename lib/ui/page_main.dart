import 'package:capstone_project/ui/ui_main/file_manager_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:capstone_project/ui/ui_main/home_page.dart';
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
            icon: Icon(CupertinoIcons.folder_circle),
            label: "Upload Manager",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2),
            label: "About Us",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return HomePage();
          case 1:
            return SearchPage();
          case 2:
            return FileManagerPage();
          case 3:
            return AboutPage();
          default:
            return const Center(
              child: Text('Page not found!'),
            );
        }
      },
    );
  }
}
