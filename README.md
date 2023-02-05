# Flutter 기본 강의
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
<a href="lib/screen/home_screen.dart"> Column Example Code</a></br>
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
# Flutter
