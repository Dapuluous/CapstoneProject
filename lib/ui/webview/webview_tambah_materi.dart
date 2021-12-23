import 'package:capstone_project/ui/page_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewTambahMateri extends StatefulWidget {

  @override
  State<WebViewTambahMateri> createState() => _WebViewTambahMateriState();
}

class _WebViewTambahMateriState extends State<WebViewTambahMateri> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://csd137capstone.dapuluous.me/insertMateri.php",
      appBar: AppBar(
        title: const Text("Tambah Data materi"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back
          ),
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageMain())
            );
          },
        ),
      ),
    );
  }
}