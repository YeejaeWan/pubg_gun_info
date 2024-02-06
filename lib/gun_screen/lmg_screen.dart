import 'package:flutter/material.dart';

import 'gun_info.dart';

class LmgScreen extends StatelessWidget {
  const LmgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: 15.0,
      fontWeight: FontWeight.w700,
    );

    // 총기 리스트를 정의합니다.
    final List<Map<String, dynamic>> gunList = [
      {
        'type': 'lmg',
        'name': 'M249',
        'ammunition': '5.56mm',
        'ammunition_image': 'asset/img/5탄.png',
        'image': 'asset/img/m249.png',
        'magazine': '75',
        'shotmode': '단발',
        'damage': '41',
        'muzzleVelocity': '915m/s',
        'stoppingPower': '10000',
        'ttk': '0.348',
        'dps': '574',
        'reloadTime': '8.2s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/개머리판.png',
          'asset/img/중량개머리판.png'
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '퀵드로우 탄창(AR,DMR,M249,S12K)',
          '대용량 탄창(AR,DMR,M249,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,M249,S12K)',
          '전술 개머리판',
          '중량형 개머리판(SMG,AR,M249)',
        ],
      },
      {
        'type': 'lmg',
        'name': 'DP-28',
        'ammunition': '7.62mm',
        'ammunition_image': 'asset/img/7탄.png',
        'image': 'asset/img/dp28.png',
        'magazine': '47',
        'shotmode': '단발',
        'damage': '52',
        'muzzleVelocity': '840m/s',
        'stoppingPower': '10000',
        'ttk': '0.432',
        'dps': '500.5',
        'reloadTime': '5.5s',
        'spawnArea': '에란겔, 파라모, 헤이븐',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/열화상4배율.png',

        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '4배율 열화상 스코프',
        ],
      },
      {
        'type': 'lmg',
        'name': 'MG3',
        'ammunition': '7.62mm',
        'ammunition_image': 'asset/img/7탄.png',
        'image': 'asset/img/mg3.png',
        'magazine': '75',
        'shotmode': '단발(660, 990RPM)',
        'damage': '42',
        'muzzleVelocity': '840m/s',
        'stoppingPower': '10000',
        'ttk': '0.3.03',
        'dps': '727.7',
        'reloadTime': '8.2s',
        'spawnArea': '보급 무기',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/열화상4배율.png',

        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '4배율 열화상 스코프',
        ],
      },
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2AA00), // 배경색을 검정색으로 설정합니다.
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'LMG - 경기관총',
            style: textStyle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0), // 그리드에 패딩을 추가합니다.
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3개의 열을 가진 그리드 뷰를 생성합니다.
              childAspectRatio: 0.75, // 셀의 가로 세로 비율을 조정합니다.
            ),
            itemCount: gunList.length, // 총기의 갯수만큼 아이템을 생성합니다.
            itemBuilder: (context, index) {
              return Card(
                // 카드 위젯을 사용하여 각 항목을 감쌉니다.
                color: Colors.grey[900], // 카드 배경색을 설정합니다.
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // 센터 정렬을 적용합니다.
                  children: [
                    Expanded(
                      child: IconButton(
                        icon: Image.asset(
                          gunList[index]['image']!, // 이미지 경로를 사용합니다.
                          fit: BoxFit.contain, // 이미지를 비율에 맞게 조정합니다.
                        ),
                        iconSize: 200, // 아이콘의 크기를 지정합니다.
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) =>
                                    GunInfoScreen(gunData: gunList[index])),
                          );
                        },
                      ),
                    ),
                    Text(
                      gunList[index]['name']!, // 총기의 이름을 표시합니다.
                      style: textStyle,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
