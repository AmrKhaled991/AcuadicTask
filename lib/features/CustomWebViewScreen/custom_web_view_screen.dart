// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aquadic_task/core/GlobalUtils/customsnackbar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebViewScreen extends StatefulWidget {
  String url;
  CustomWebViewScreen({
    super.key,
    required this.url,
  });

  @override
  State<CustomWebViewScreen> createState() => _CustomWebViewScreenState();
}


class _CustomWebViewScreenState extends State<CustomWebViewScreen> {
  late WebViewController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
          },
          onPageStarted: (String url) {

          },
          onPageFinished: (String url) {

          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web View Example'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
