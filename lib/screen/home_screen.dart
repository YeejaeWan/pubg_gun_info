import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pubg_gun_info/screen/community_screen.dart';
import 'package:pubg_gun_info/screen/gun_Info_screen.dart';
import 'package:pubg_gun_info/screen/myPage_screen.dart';
import 'package:pubg_gun_info/screen/damage_screen.dart';

// 각 탭에 대응하는 위젯들을 미리 정의합니다.
class GunInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child:
      gunInfoScreen(),
    );
  }
}

class DamageCalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Center(
        child : DamageScreen(),
      );
  }
}

class Community extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child:
      CommunityScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 여기에 내정보 화면 구성
    return Center(child: MyPageScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // 현재 선택된 탭 인덱스

  // 각 탭에 대응하는 위젯 리스트
  final List<Widget> _children = [
    GunInfoScreen(),
    DamageCalculatorScreen(),
    Community(),
    UserProfileScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index; // 선택된 탭에 따라 인덱스를 업데이트
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // 상태바 배경 색상을 투명으로 설정
      statusBarIconBrightness: Brightness.dark, // 상태바 아이콘을 어두운 색으로 설정
      // Brightness.light를 사용하면 아이콘을 밝은 색으로 설정할 수 있습니다.
    ));
    return Scaffold(
      body: _children[_currentIndex], // 현재 선택된 탭의 위젯을 보여줌
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white, // 선택된 탭의 색상
        unselectedItemColor: Color(0xff333333), // 선택되지 않은 탭의 색상
        backgroundColor: Colors.black,
        onTap: onTabTapped, // 탭을 선택할 때 호출될 메소드
        currentIndex: _currentIndex, // 현재 선택된 탭 인덱스
        type: BottomNavigationBarType.fixed, // 3개 이상의 탭이 있을 때
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.info),
            label: '총기 정보',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calculate),
            label: '데미지 측정',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: '커뮤니티'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '내 정보'
          ),
        ],
      ),
    );
  }
}
