import 'package:capstone_project/model/materi.dart';
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
                child: Text("${widget.datum.judulMateri}\n${widget.datum.idUser}"),
              ),
            ),
          ),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => DetailMateriPage(datum: widget.datum)),
            // );
          },
        ),
      ),
    );
  }
}