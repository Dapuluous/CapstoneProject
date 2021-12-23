import 'package:capstone_project/api/api_service.dart';
import 'package:capstone_project/model/materi.dart';
import 'package:capstone_project/ui/page_detail.dart';
import 'package:capstone_project/ui/page_main.dart';
import 'package:capstone_project/ui/webview/webview_edit_materi.dart';
import 'package:flutter/material.dart';

class CardMateriExtra extends StatefulWidget {
  final Datum datum;
  const CardMateriExtra({required this.datum});

  @override
  State<CardMateriExtra> createState() => _CardMateriState();
}

class _CardMateriState extends State<CardMateriExtra> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: InkWell(
          child: SizedBox(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.5,
                          child: Text(
                            widget.datum.judulMateri,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Text("Untuk kalangan pelajar tingkat ${widget.datum.namaKategori}"),
                      ],
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue, size: 25),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => WebViewEditMateri(datum: widget.datum))
                            );
                          },
                        ),

                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.blue, size: 25),
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Alert'),
                                content: Text('Apakah anda ingin menghapus data "${widget.datum.judulMateri}"?'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Tidak'),
                                    child: const Text('Tidak'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'Ya');
                                      ApiService().deleteMateri(widget.datum.idMateri);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PageMain()),
                                      );
                                    },
                                    child: const Text('Ya'),
                                  ),
                                ],
                              )
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageDetail(datum: widget.datum)),
            );
          },
        ),
      ),
    );
  }
}