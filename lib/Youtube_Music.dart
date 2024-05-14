import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Youtube_Music extends StatefulWidget {
  const Youtube_Music({Key? key}) : super(key: key);

  @override
  State<Youtube_Music> createState() => _Youtube_MusicState();
}

class _Youtube_MusicState extends State<Youtube_Music> {
  String? Url;
  double Progress = 0;
  InAppWebViewController? web;
  String? current;
  PullToRefreshController? Refresh;

  @override
  void initState() {
    super.initState();
    Refresh = PullToRefreshController(
      onRefresh: () {
        web!.reload();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Url = ModalRoute.of(context)!.settings.arguments as String?;
    return WillPopScope(
      onWillPop: () async {
        await web!.goBack();
        return (current == Url) ? true : false;
      },
      child: Scaffold(
        appBar: PreferredSize(
            child: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                "YouTube Music",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            preferredSize: Size(0, 45)),
        body: Column(
          children: [
            LinearProgressIndicator(
              value: Progress,
              backgroundColor: Colors.lime.shade900,
            ),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse(Url!),
                ),
                pullToRefreshController: Refresh,
                onWebViewCreated: (controller) {
                  setState(() {
                    web = controller;
                  });
                },
                onLoadStop: (controller, url) async {
                  setState(() {
                    current = url.toString();
                  });
                  setState(() {});
                },
                onLoadStart: (controller, url) async {
                  setState(() {
                    current = url.toString();
                  });
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
