import 'package:capstone_project/model/materi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewDownloadMateri extends StatefulWidget {
  final Datum datum;
  const WebViewDownloadMateri({required this.datum});

  @override
  State<WebViewDownloadMateri> createState() => _WebViewDownloadMateriState();
}

class _WebViewDownloadMateriState extends State<WebViewDownloadMateri> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.datum.linkMateri,
      appBar: AppBar(
        title: const Text("Edit Data materi"),
      ),
    );
  }
}