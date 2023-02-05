import 'package:flutter/material.dart';
import 'package:hello_world/screen/home_screen_webview.dart';

void main() {

  // flutter 프레임워크가 앱을 실행할 준비가 될때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenWebView(),
    )
  );
}