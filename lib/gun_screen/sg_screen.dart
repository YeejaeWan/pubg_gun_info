import 'package:flutter/material.dart';

import 'gun_info.dart';

class SgScreen extends StatelessWidget {
  const SgScreen({super.key});

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
        'type': 'sg',
        'name': 'S1897',
        'ammunition': '12게이지',
        'ammunition_image': 'asset/img/12게이지.png',
        'image': 'asset/img/펌샷.png',
        'magazine': '5',
        'shotmode': '단발',
        'damage': '234',
        'muzzleVelocity': '360m/s',
        'stoppingPower': '5000',
        'ttk': '0.75',
        'dps': '432',
        'reloadTime': '4.210s(한발 : 0.635s)',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/덕빌.png',
          'asset/img/쵸크.png',
          'asset/img/탄띠.png',
        ],
        'attachments_name': [
          '덕빌',
          '쵸크(SG)',
          '탄띠(SG,SR,Win94)',
        ],
      },
      {
        'type': 'sg',
        'name': 'S686',
        'ammunition': '12게이지',
        'ammunition_image': 'asset/img/12게이지.png',
        'image': 'asset/img/덥배.png',
        'magazine': '2',
        'shotmode': '단발',
        'damage': '234',
        'muzzleVelocity': '360m/s',
        'stoppingPower': '5000',
        'ttk': '0.2',
        'dps': '432',
        'reloadTime': '3s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/쵸크.png',
          'asset/img/탄띠.png',
        ],
        'attachments_name': [
          '쵸크(SG)',
          '탄띠(SG,SR,Win94)',
        ],
      },

      {
        'type': 'sg',
        'name': 'S12K',
        'ammunition': '12게이지',
        'ammunition_image': 'asset/img/12게이지.png',
        'image': 'asset/img/s12k.png',
        'magazine': '5',
        'shotmode': '단발',
        'damage': '216',
        'muzzleVelocity': '360m/s',
        'stoppingPower': '5000',
        'ttk': '0.25',
        'dps': '864',
        'reloadTime': '3s',
        'spawnArea': '모든맵(데스턴 제외)',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/덕빌.png',
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
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '덕빌'
        ],
      },
      {
        'type': 'sg',
        'name': 'DBS',
        'ammunition': '12게이지',
        'ammunition_image': 'asset/img/12게이지.png',
        'image': 'asset/img/dbs.png',
        'magazine': '14',
        'shotmode': '단발',
        'damage': '234',
        'muzzleVelocity': '360m/s',
        'stoppingPower': '5000',
        'ttk': '0.2',
        'dps': '488.7',
        'reloadTime': '6.5s',
        'spawnArea': '모든맵(헤이븐 제외)',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',

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

        ],
      },
      {
        'type': 'sg',
        'name': '소드 오프',
        'ammunition': '12게이지',
        'ammunition_image': 'asset/img/12게이지.png',
        'image': 'asset/img/소드오프.png',
        'magazine': '2',
        'shotmode': '단발',
        'damage': '189',
        'muzzleVelocity': '360m/s',
        'stoppingPower': '8000',
        'ttk': '0.5',
        'dps': '640',
        'reloadTime': '3s',
        'spawnArea': '미라마, 사녹, 데스턴',
        'attachments': [
          'asset/img/쵸크.png',
        ],
        'attachments_name': [
          '쵸크(SG)',
        ],
      },
      {
        'type' : 'sg',
        'name': 'O12',
        'image': 'asset/img/o12.png',
        'ammunition' : '슬러그탄',
        'ammunition_image' : 'asset/img/12게이지슬러그.png',
        'magazine': '30',
        'shotmode': '단발/3점사/연사',
        'damage': '100',
        'muzzleVelocity': '625m/s',
        'stoppingPower': '15000',
        'ttk': '0.25s',
        'dps': '720',
        'reloadTime': '3.6s',
        'spawnArea': '데스턴, 태이고',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',
          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
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
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
      },

    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2AA00), // 배경색을 검정색으로 설정합니다.
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'SG - 샷건',
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
