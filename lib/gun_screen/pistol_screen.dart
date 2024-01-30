import 'package:flutter/material.dart';

import 'gun_info.dart';

class PistolScreen extends StatelessWidget {
  const PistolScreen({super.key});

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
        'type': 'pistol',
        'name': 'P92',
        'ammunition': '9mm',
        'ammunition_image': 'asset/img/9탄.png',
        'image': 'asset/img/p92.png',
        'magazine': '15',
        'shotmode': '단발',
        'damage': '22',
        'muzzleVelocity': '380m/s',
        'stoppingPower': '7000',
        'ttk': '0.6',
        'dps': '340',
        'reloadTime': '2s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/smg소음기.png',
          'asset/img/smg퀵드로우.png',
          'asset/img/smg대탄.png',
          'asset/img/smg대퀵.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '소음기(권총,SMG)',
          '퀵드로우 탄창(권총,SMG)',
          '대용량 탄창(권총,SMG)',
          '대용량 퀵드로우 탄창(권총,SMG)',
          '레이저 사이트',
        ],
      },
      {
        'type': 'pistol',
        'name': 'P18C',
        'ammunition': '9mm',
        'ammunition_image': 'asset/img/9탄.png',
        'image': 'asset/img/p18c.png',
        'magazine': '17',
        'shotmode': '단발/연사',
        'damage': '23',
        'muzzleVelocity': '375m/s',
        'stoppingPower': '7000',
        'ttk': '0.48',
        'dps': '340',
        'reloadTime': '2s',
        'spawnArea': '에란겔, 미라마, 사녹, 파라모, 태이고',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/smg소음기.png',
          'asset/img/smg퀵드로우.png',
          'asset/img/smg대탄.png',
          'asset/img/smg대퀵.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '소음기(권총,SMG)',
          '퀵드로우 탄창(권총,SMG)',
          '대용량 탄창(권총,SMG)',
          '대용량 퀵드로우 탄창(권총,SMG)',
          '레이저 사이트',
        ],
      },
      {
        'type': 'pistol',
        'name': 'P1911',
        'ammunition': '.45ACP',
        'ammunition_image': 'asset/img/45탄.png',
        'image': 'asset/img/p1911.png',
        'magazine': '7',
        'shotmode': '단발',
        'damage': '42',
        'muzzleVelocity': '250m/s',
        'stoppingPower': '6000',
        'ttk': '0.44',
        'dps': '381.8',
        'reloadTime': '2.1s',
        'spawnArea': '에란겔, 미라마, 사녹, 비켄디, 파라모, 태이고',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/smg소음기.png',
          'asset/img/smg퀵드로우.png',
          'asset/img/smg대탄.png',
          'asset/img/smg대퀵.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '소음기(권총,SMG)',
          '퀵드로우 탄창(권총,SMG)',
          '대용량 탄창(권총,SMG)',
          '대용량 퀵드로우 탄창(권총,SMG)',
          '레이저 사이트',
        ],
      },
      {
        'type': 'pistol',
        'name': 'Deagle',
        'ammunition': '.45ACP',
        'ammunition_image': 'asset/img/45탄.png',
        'image': 'asset/img/deagle.png',
        'magazine': '7',
        'shotmode': '단발',
        'damage': '62',
        'muzzleVelocity': '450m/s',
        'stoppingPower': '9000',
        'ttk': '0.8',
        'dps': '381.8',
        'reloadTime': '2.4s',
        'spawnArea': '모든맵(론도 제외)',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/smg퀵드로우.png',
          'asset/img/smg대탄.png',
          'asset/img/smg대퀵.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '퀵드로우 탄창(권총,SMG)',
          '대용량 탄창(권총,SMG)',
          '대용량 퀵드로우 탄창(권총,SMG)',
          '레이저 사이트',
        ],
      },
      {
        'type': 'pistol',
        'name': 'Skorpion',
        'ammunition': '9mm',
        'ammunition_image': 'asset/img/9탄.png',
        'image': 'asset/img/스콜피온.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '22',
        'muzzleVelocity': '350m/s',
        'stoppingPower': '5000',
        'ttk': '0.56',
        'dps': '312',
        'reloadTime': '2.1s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/smg소음기.png',
          'asset/img/smg퀵드로우.png',
          'asset/img/smg대탄.png',
          'asset/img/smg대퀵.png',
          'asset/img/수직.png',
          'asset/img/하프.png',
          'asset/img/라이트.png',
          'asset/img/레이저사이트.png',
          'asset/img/smg개머리판.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '소음기(권총,SMG)',
          '퀵드로우 탄창(권총,SMG)',
          '대용량 탄창(권총,SMG)',
          '대용량 퀵드로우 탄창(권총,SMG)',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '레이저 사이트',
          '접이식 개머리판(스콜피온,마이크로 UZI,MP9)'
        ],
      },
      {
        'type': 'pistol',
        'name': 'R45',
        'ammunition': '.45ACP',
        'ammunition_image': 'asset/img/45탄.png',
        'image': 'asset/img/r45.png',
        'magazine': '6',
        'shotmode': '단발',
        'damage': '65',
        'muzzleVelocity': '330m/s',
        'stoppingPower': '8000',
        'ttk': '1',
        'dps': '260',
        'reloadTime': '3.2s',
        'spawnArea': '미라마, 사녹, 데스턴',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '레이저 사이트',
        ],
      },
      {
        'type': 'pistol',
        'name': 'R1895',
        'ammunition': '7.62mm',
        'ammunition_image': 'asset/img/7탄.png',
        'image': 'asset/img/r1895.png',
        'magazine': '7',
        'shotmode': '단발',
        'damage': '64',
        'muzzleVelocity': '330m/s',
        'stoppingPower': '8000',
        'ttk': '0.8',
        'dps': '320',
        'reloadTime': '6.250(한발 : 1s)',
        'spawnArea': '에란겔, 사녹, 파라모, 태이고',
        'attachments': [
          'asset/img/smg소음기.png',
        ],
        'attachments_name': [
          '소음기(권총,SMG)',
        ],
      },
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2AA00), // 배경색을 검정색으로 설정합니다.
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Pistol - 권총',
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
