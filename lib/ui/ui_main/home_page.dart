import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  final List<String> items;
  const HomePage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(150),
                  child: Container(
                    width: double.infinity,
                    child: const Text(
                      "Logo",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Materi Baru!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        "Kategori",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        )
                    ),

                    Padding(
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
    );
  }
}