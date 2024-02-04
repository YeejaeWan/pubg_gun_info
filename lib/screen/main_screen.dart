import 'package:flutter/material.dart';
import 'package:pubg_gun_info/screen/home_screen.dart';

import 'damage_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'PUBG 정보 어플',
            style: textStyle.copyWith(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color(0xFFF2AA00),
        body: Center( // 중앙 정렬을 위해 Center 위젯을 사용합니다.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2, // 버튼의 높이를 조절하기 위해 flex 비율을 조정합니다.
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 버튼 사이의 공간을 동일하게 설정합니다.
                  children: [
                    Container(
                      // 버튼 크기와 마진을 설정하여 정사각형 모양을 만듭니다.
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder( // 테두리를 갖는 모양으로 변경합니다.
                            borderRadius: BorderRadius.circular(10.0), // 네모난 모서리를 만들기 위해 0으로 설정합니다.
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => HomeScreen()),
                          );
                        },
                        child: Text(
                          '총기 정보',
                          style: textStyle,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text('커뮤니티', style: textStyle),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1, // 하단 버튼의 높이를 위에 있는 버튼들보다 작게 만듭니다.
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8, // 너비를 부모 컨테이너의 80%로 설정합니다.
                  height: MediaQuery.of(context).size.width * 0.5,
                  margin: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => DamageScreen()),
                      );
                    },
                    child: Text('데미지 측정', style: textStyle),
                  ),
                ),
              ),
              SizedBox(
                  height: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
