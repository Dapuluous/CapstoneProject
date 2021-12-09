import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:capstone_project/ui/ui_main/home_page.dart';

class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.tray_fill),
            label: "Favorit",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.drop_fill),
            label: "Tentang Kami",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return HomePage(items: List<String>.generate(3, (i) => 'Item $i'));
          case 1:
            return FavoritePage();
          case 2:
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

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text("Favorite Page");
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text("About Page");
  }
}