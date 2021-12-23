import 'package:capstone_project/model/materi.dart';
import 'package:capstone_project/ui/webview/webview_download_materi.dart';
import 'package:flutter/material.dart';

class PageDetail extends StatelessWidget {
  final Datum datum;
  PageDetail({required this.datum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 160,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFe0e0e0),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text(
                      datum.judulMateri,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right:15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: Text(
                              datum.judulMateri,
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Untuk kalangan pelajar tingkat ${datum.namaKategori}",
                              style: const TextStyle(
                                  color: Colors.blue
                              ),
                            ),
                          ),
                        ],
                      ),

                      IconButton(
                        icon: const Icon(Icons.download, color: Colors.blue, size: 25),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WebViewDownloadMateri(datum: datum))
                          );
                        },
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                    child: Text(
                      datum.deskripsi,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}