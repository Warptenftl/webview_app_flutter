import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  InAppWebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Distrowatch WebView'),
        ),
        body: Container(
            child: Column(children: <Widget>[
              Expanded(
                child:InAppWebView(
                  initialUrl: "https://distrowatch.com/",
                  initialOptions: InAppWebViewGroupOptions(
                      crossPlatform: InAppWebViewOptions(
                        debuggingEnabled: true,
                      )
                  ),
                  onWebViewCreated: (InAppWebViewController controller) {
                    _webViewController = controller;
                  },
                  onLoadStart: (InAppWebViewController controller, String url) {

                  },
                  onLoadStop: (InAppWebViewController controller, String url) {

                  },
                ),
              ),
            ])),
      ),
    );
  }
}