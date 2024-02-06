import 'package:flutter/material.dart';

import 'gun_info.dart';

class EtcScreen extends StatelessWidget {
  const EtcScreen({super.key});

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
        'type': 'etc',
        'name': 'M79',
        'ammunition': '40mm연막탄',
        'ammunition_image': 'asset/img/40mm.png',
        'image': 'asset/img/m79.png',
        'magazine': '1',
        'shotmode': '단발',
        'damage': '-',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '2s',
        'spawnArea': '모든맵',
        'attachments': [

        ],
        'attachments_name': [

        ],
      },
      {
        'type': 'etc',
        'name': '석궁',
        'ammunition': '석궁용 볼트',
        'ammunition_image': 'asset/img/석궁용볼트.png',
        'image': 'asset/img/석궁.png',
        'magazine': '1',
        'shotmode': '단발',
        'damage': '105',
        'muzzleVelocity': '160m/s',
        'stoppingPower': '8000',
        'ttk': '-',
        'dps': '105',
        'reloadTime': '3.5s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/열화상4배율.png',
          'asset/img/화살통.png',

        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '4배율 열화상 스코프',
          '석궁용 화살통'
        ],
      },
      {
        'type': 'etc',
        'name': '박격포',
        'ammunition': '60mm 박격포탄',
        'ammunition_image': 'asset/img/박격포탄.png',
        'image': 'asset/img/박격포.png',
        'magazine': '1',
        'shotmode': '단발',
        'damage': '3000',
        'muzzleVelocity': '40m/s',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '2s',
        'spawnArea': '모든맵(헤이븐, 데스턴)',
        'attachments': [

        ],
        'attachments_name': [

        ],
      },
      {
        'type': 'etc',
        'name': '판처파우스트',
        'ammunition': '판처파우스트 탄두',
        'image': 'asset/img/판처.png',
        'magazine': '1',
        'shotmode': '단발',
        'damage': '1500',
        'muzzleVelocity': '62m/s',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '재장전 불가',
        'spawnArea': '모든맵(헤이븐 제외)',
        'attachments': [

        ],
        'attachments_name': [

        ],
      },
      {
        'type': 'etc',
        'name': 'Stun Gun',
        'ammunition': '-',
        'image': 'asset/img/스턴건.png',
        'magazine': '1',
        'shotmode': '단발',
        'damage': '0',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '-',
        'spawnArea': '론도',
        'attachments': [

        ],
        'attachments_name': [

        ],
      },
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2AA00), // 배경색을 검정색으로 설정합니다.
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            '기타',
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
