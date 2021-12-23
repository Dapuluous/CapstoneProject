import 'package:capstone_project/api/api_service.dart';
import 'package:capstone_project/model/materi.dart';
import 'package:capstone_project/ui/card/card_materi.dart';
import 'package:flutter/material.dart';

class SearchResultPage extends StatefulWidget {
  final String keyword;
  const SearchResultPage({required this.keyword});

  @override
  _SearchResultPageState createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  TextEditingController editingController = TextEditingController();
  late Future<Materi> materi;

  @override
  void initState() {
    super.initState();
    materi = ApiService().getMateriSearch(widget.keyword);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cari Materi"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FutureBuilder(
                future: materi,
                builder: (context, AsyncSnapshot<Materi> snapshot) {
                  var state = snapshot.connectionState;
                  if (state != ConnectionState.done) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data?.data.length,
                        itemBuilder: (context, index) {
                          var data = snapshot.data?.data[index];
                          return CardMateri(datum: data!);
                        },
                      );
                    } else if (snapshot.hasError) {
                      return const Text("Tidak Ditemukan Data");
                    } else {
                      return const Text("Tidak Ditemukan Data");
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}