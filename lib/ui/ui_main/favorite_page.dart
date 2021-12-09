import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FavoritePage extends StatelessWidget {
  final List<String> items;
  const FavoritePage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 10, top: 10),
                          child: Text(items[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}