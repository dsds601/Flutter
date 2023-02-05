# Flutter 기본 강의
* flutter 설정은 pubspec.yml에서 진행이 됩니다.
  * 정적 파일 위치 , 플러그인 적용
  * 플러그인 적용후 PlatformException 발생 할 경우 flutter clean으로 native언어에 맞게 설정하게 하는 과정 필요
* ox 16진수 사용함을 알림
* flutter 코드 기본 뼈대 암기
  ~~~
  void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ,
      ),
    )
  );
    }
  ~~~
  ### Widget Tree
* WidgetTree 부모, 자식 관계를 나타내는걸 부릅니다.
* widget이란 Material -> Scaffold -> Center 등을 위젯이라 부릅니다.

### 정적 폴더 추가
* pubspec.yaml 파일 내부에 flutter : 탭을 추가
  * 추가 후 pub get 으로 앱으로 불러야합니다.
    ~~~
    flutter:
    uses-material-design: true
    assets:
      - asset/img/
    ~~~

* Hot Reload는 클래스 내부에 있는 로직만 리로드가 됩니다.

--- 
* mainAxisAlignment : 주축 정렬
### Row and Column
<a href="lib/prc_screen/home_screen.dart"> Column Example Code</a></br>
* SafeArea : 핸드폰내에 컨텐츠 칸만 차지하도록 설정하는 Container
* MainAxisAlignment : 주축 정렬
  * start :시작 , end : 끝 , center : 가운데 , spaceBetween : 위젯과 위젯 사이 동일하게 배치 , <br/>
  spaceEvenly : 위젯이 과 같은 간격 배치 하지만 끝과 끝에도 위젯이 아닌 빈 간격으로 배치 , spaceArount : spaceEvenly + 끝과 끝의 간격 1/2
    ~~~
    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
    ~~~
* CrossAxisAlignment : 반대축 정렬    
  * 기본값 가운데 정렬 Main과 비슷합니다.

#### Expanded / Flexible
* Row , Column 위젯에 children에만 사용 할 수 있습니다. 
* Expanded : 화면에 남아있는 공간을 모두 사용합니다. 위젯에 모두 들어가게 된다면 1:1로 나눠집니다.
* Expanded 에 flex는 Expanded 위젯에 비율을 정할떄 사용합니다.
* Flexible는 기본적으로 Expanded랑 비슷하지만 비율에 남는 공간은 채우지 않고 그대로 두게 됩니다.

### WebView 3 version
<a href='lib/prc_screen/home_screen_webview.dart'>WebView Code</a>
* webView 적용법
~~~
return Scaffold(
      appBar: AppBar( // appBard 생성 앱에 타이틀
        title: Text('Code Factory'),
        centerTitle: true, // title 위치 지정
        backgroundColor: Colors.orange,
      ),
      body: WebView(
        initialUrl: 'https://blog.codefactory.ai',
        javascriptMode: JavascriptMode.unrestricted, // javascript 사용 허용 default disabled
      )
    );
~~~

* Controller
  * 위젯들을 프로그래밍적으로 조작

* HTTP 프로토콜 사용하는법
  * 기본적으로 http프로토콜은 보안이 좋지않아 IOS ANDROID 모두 사용을 막고 있습니다. 
  * IOS 설정법 ios/Runner/info.plist에 세팅
    ~~~
    <key>NSAppTransportSecurity</key>
	<dict>
	    <key>NSAllowLocalNetworking</key>
	    <true/>
	    <key>NSAllowsArbitraryLoadsInWebContent</key>
	    <true/>
	</dict>
    ~~~
    * Android 설정법
    ~~~
    <uses-permission android:name="android.permission.INTERNET"/> // 안드로이드 인터넷 허용 https http 모두 필요
    <application
    android:label="hello_world"
    android:name="${applicationName}"
    android:icon="@mipmap/ic_launcher"
    android:usesCleartextTraffic="true">  // http 접속 혀용
    ~~~

### StatefulWidget
<a href='lib/prc_screen/statefull_widget.dart'>Code Example</a>
* 두개의 클래스로 구성이 되어있습니다.

* Widget 이론
  * Widget은 모두 **불변의** 법칙을 갖고 있다.
  * 하지만 위젯의 값을 변경할때가 있다. (색 변경 등)
  * 변경이 필요하면 기존 위젯을 삭제해버리고 완전 새로운 위젯으로 대체한다.
  
* StatelessWidget 라이프 사이클
  * Constructor로 생성이되고 생성이 되자마자 build 함수가 실행된다.
  * 이전 Container 예제와 마찬가지로 변경이 필요하면 새로운 위젯을 만들어 버린다.
  * 하나의 StatelessWidget은 라이프 사이클동안 **단 한번만 build함수**를 실행한다.

* StatefulWidget 라이플 사이클
  * 상태관리가 가능한 위젯
  * 파라미터가 바뀌었을때 생명주기는 가지고 있던 위젯에 state를 기반으로 빌드후 값을 clear -> update -> dirty -> build합니다.

* StatefulWidget 과 State 클래스는 한 세트입니다.
  