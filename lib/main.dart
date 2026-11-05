import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewScreen(),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse("https://premkrrajbhar.github.io/shri-hanuman-bhakti-dham/")
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Jai Shree Ram, Jai Bajrang Bali"),
      // ),

      body: Padding(
        padding: EdgeInsets.only(
          // top: 30,
          // bottom: 50,
          top: MediaQuery.of(context).size.height * 0.03,
          bottom: MediaQuery.of(context).size.height * 0.05,
        ),
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }

}