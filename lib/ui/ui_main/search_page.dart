import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            height: 250,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 220,
                      color: Colors.blue,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Materi (Bingung Nulis Apa)"),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: const Color(0xFFf6f6f6),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFFe0e0e0),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        height: 70,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              style: TextStyle(
                                height: 0.2,
                              ),
                              decoration: InputDecoration(
                                labelText: "Cari Materi",
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.search),
                                  onPressed: () {},
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}