import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  final List<String> items;
  const HomePage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 160,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 135,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 80,
                            child: const Text(
                                "Selamat Datang, User",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "123\nFile Materi",
                                      textAlign: TextAlign.center,
                                    ),

                                    Text(
                                      "0\nUnduhan",
                                      textAlign: TextAlign.center,
                                    ),

                                    Text(
                                      "0\nTotal Favorit",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Materi Baru!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Cobalah Hal-Hal Baru Untuk Dibaca",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 10, left: 10, top: 10),
                                      child: Text(items[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Divider(
                thickness: 5,
                color: const Color(0xff16185078)
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                          "Kategori",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Kategori Rekomendasi Untukmu!",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                child: const Card(
                                  child: Center(child: Text("Kategori")),
                                ),
                              ),

                              Container(
                                width: 120,
                                height: 120,
                                child: const Card(
                                  child: Center(child: Text("Kategori")),
                                ),
                              ),

                              Container(
                                width: 120,
                                height: 120,
                                child: const Card(
                                  child: Center(child: Text("Kategori")),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}