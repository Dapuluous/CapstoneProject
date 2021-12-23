import 'package:capstone_project/api/api_service.dart';
import 'package:capstone_project/model/materi.dart';
import 'package:capstone_project/ui/card/card_materi.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => new _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController editingController = TextEditingController();
  late Future<Materi> materi;

  @override
  void initState() {
    super.initState();
    materi = ApiService().getMateriLimit();
  }

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
                                  "Cari Materi",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "Temukan Materi Yang Kamu Inginkan",
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
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {});
                                  },
                                  controller: editingController,
                                  decoration: InputDecoration(
                                    labelText: "Cari Materi",
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.close),
                                      onPressed: () {
                                        FocusManager.instance.primaryFocus!.unfocus();
                                        editingController.clear();
                                      },
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
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
                  child: FutureBuilder(
                    future: materi,
                    builder: (context, AsyncSnapshot<Materi> snapshot) {
                      var state = snapshot.connectionState;
                      if (state != ConnectionState.done) {
                        return Center(child: CircularProgressIndicator());
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
                          return Text("Tidak Ditemukan Data");
                        } else {
                          return Text("Tidak Ditemukan Data");
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