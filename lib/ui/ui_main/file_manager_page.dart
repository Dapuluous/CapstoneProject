import 'package:capstone_project/ui/ui_form/tambah_materi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../page_detail.dart';

class FileManagerPage extends StatefulWidget {
  @override
  _FileManagerPageState createState() => _FileManagerPageState();
}

class _FileManagerPageState extends State<FileManagerPage> {
  TextEditingController editingController = TextEditingController();
  final items = List<String>.generate(3, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                "Upload Materi",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Kelola Materi Yang Kamu Upload",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
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
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => TambahMateri()),
                                    );
                                  },
                                  icon: Icon(Icons.add),
                                  label: Text("Tambah Data"),
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
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      if (editingController.text.isEmpty) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Card(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PageDetail()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10, left: 10, top: 10),
                                child: Text(items[index]),
                              ),
                            ),
                          ),
                        );
                      } else if (items[index].toLowerCase().contains(editingController.text)) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Card(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PageDetail()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10, left: 10, top: 10),
                                child: Text(items[index]),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}