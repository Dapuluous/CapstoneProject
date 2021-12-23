import 'package:capstone_project/api/api_service.dart';
import 'package:capstone_project/model/materi.dart';
import 'package:capstone_project/ui/card/card_materi_extra.dart';
import 'package:capstone_project/ui/webview/webview_tambah_materi.dart';
import 'package:flutter/material.dart';

class FileManagerPage extends StatefulWidget {
  @override
  _FileManagerPageState createState() => _FileManagerPageState();
}

class _FileManagerPageState extends State<FileManagerPage> {
  late Future<Materi> materi;

  @override
  void initState() {
    super.initState();
    materi = ApiService().getMateri();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 160,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 135,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(35),
                              bottomRight: Radius.circular(35)),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: SizedBox(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                "Upload Materi",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Kelola Materi Yang Kamu Upload",
                                  style: TextStyle(color: Colors.white),
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
                            color: Color(0xFFf6f6f6),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFe0e0e0),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          height: 70,
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SizedBox(
                                width: double.infinity,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WebViewTambahMateri()),
                                    );
                                  },
                                  icon: const Icon(Icons.add),
                                  label: const Text("Tambah Data"),
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
            Expanded(
              child: Padding(
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
                            return CardMateriExtra(datum: data!);
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
            ),
          ],
        ),
      ),
    );
  }
}
