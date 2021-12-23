import 'package:capstone_project/api/api_service.dart';
import 'package:capstone_project/model/materi.dart';
import 'package:capstone_project/ui/card/card_materi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned.fill(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                            height: 80,
                            child: Text(
                              "Selamat Datang, User",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
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
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 70,
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    FutureBuilder<Materi>(
                                      future: materi,
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return Text("${snapshot.data!.total}\nTotal Materi", textAlign: TextAlign.center);
                                        } else if (snapshot.hasError) {
                                          return const Text("Silahkan cek koneksi internet anda.");
                                        }

                                        // By default, show a loading spinner.
                                        return const CircularProgressIndicator();
                                      },
                                    ),
                                  ],
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
                padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                        "Materi Baru!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
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
                              return const Text("Silahkan cek koneksi internet anda.");
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

              const Divider(
                  thickness: 5,
                  color: Color(0xff16185078)
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                        "Coming Soon",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Stay tuned untuk fitur lainnya di aplikasi kami!",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}