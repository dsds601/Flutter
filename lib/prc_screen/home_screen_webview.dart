import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final home_url = Uri.parse('https://blog.codefactory.ai');


class HomeScreenWebView extends StatelessWidget {
  // WebViewController? controller;  VERSION 3
  // WEB_VEIW 4 자바스크립트 모드 해제
  // initalUrl 등록
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(home_url);

  HomeScreenWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // appBard 생성 앱에 타이틀
          backgroundColor: Colors.orange,
          title: Text('Code Factory'),
          centerTitle: true, // title 위치 지정
          actions: [
            IconButton(
                onPressed: () {
                  controller.loadRequest(home_url);
                },
                icon: Icon(
                  Icons.home,
                ))
          ],
        ),
        // WEB_VIEW VERSION4
        body: WebViewWidget(
          controller: controller,
        ),
        // WEBVIEW VERSION 3
        // body: WebView(
        //   onWebViewCreated: (WebViewController controller) {
        //     this.controller = controller;
        //   },
        //   initialUrl: home_url,
        //   javascriptMode:
        //       JavascriptMode.unrestricted, // javascript 사용 허용 default disabled
        // )
    );
  }
}
