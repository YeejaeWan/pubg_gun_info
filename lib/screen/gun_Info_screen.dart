import 'package:flutter/material.dart';
import 'package:pubg_gun_info/gun_screen/ar_screen.dart';
import 'package:pubg_gun_info/gun_screen/dmr_screen.dart';
import 'package:pubg_gun_info/gun_screen/etc_screen.dart';
import 'package:pubg_gun_info/gun_screen/lmg_screen.dart';
import 'package:pubg_gun_info/gun_screen/meleeWeapon_screen.dart';
import 'package:pubg_gun_info/gun_screen/throwWeapon_screen.dart';
import '../gun_screen/pistol_screen.dart';
import '../gun_screen/sg_screen.dart';
import '../gun_screen/smg_screen.dart';
import '../gun_screen/sr_screen.dart';

class gunInfoScreen extends StatelessWidget {
  const gunInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
    );

    // 화면 전환 함수
    void navigateTo(Widget screen) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => screen),
      );
    }

    // 버튼 위젯 생성 함수
    Widget gunTypeButton(String text, Widget screen) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0), // 버튼 간격 설정
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () => navigateTo(screen),
            child: Text(text, style: textStyle),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2AA00),
        appBar: AppBar(
          title: Text(
            'PUBG 총기 정보 알려드림',
            style: textStyle.copyWith(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              gunTypeButton('AR - 돌격소총', ArScreen()),
              gunTypeButton('SR - 저격소총', SrScreen()),
              gunTypeButton('DMR - 지정사수 소총', DmrScreen()),
              gunTypeButton('SG - 샷건', SgScreen()),
              gunTypeButton('SMG - 기관단총', SmgScreen()),
              gunTypeButton('Pistol - 권총', PistolScreen()),
              gunTypeButton('LMG - 경기관총' , LmgScreen()),
              gunTypeButton('기타', EtcScreen(),),
              gunTypeButton('투척 무기', ThrowWeaponScreen()),
              gunTypeButton('근접 무기', meleeWeaponScreen()),
              // gunTypeButton('부위별 데미지 계산', DamageCalcScreen()),
              // 나중에 만듦
            ],
          ),
        ),
      ),
    );
  }
}
