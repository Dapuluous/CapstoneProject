import 'package:capstone_project/model/materi.dart';
import 'package:capstone_project/ui/page_detail.dart';
import 'package:flutter/material.dart';

class CardMateri extends StatefulWidget {
  final Datum datum;
  const CardMateri({required this.datum});

  @override
  State<CardMateri> createState() => _CardMateriState();
}

class _CardMateriState extends State<CardMateri> {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.datum.judulMateri,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("Untuk kalangan pelajar tingkat ${widget.datum.namaKategori}"),
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