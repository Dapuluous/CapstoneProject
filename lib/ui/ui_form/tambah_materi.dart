import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TambahMateri extends StatefulWidget {
  @override
  _TambahMateriState createState() => _TambahMateriState();
}

class _TambahMateriState extends State<TambahMateri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Materi"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Judul Materi:",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0, right:10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Isi judul materi disini",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Link Materi:",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0, right:10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Awali link dengan https:// atau http://",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
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
          ],
        ),
      ),
    );
  }
}