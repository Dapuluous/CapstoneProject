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
      appBar: new AppBar(
        title: new Text("Tambah Data materi"),
      ),
    );
  }
}