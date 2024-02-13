import 'package:flutter/material.dart';

import 'gun_info.dart';

class meleeWeaponScreen extends StatelessWidget {
  const meleeWeaponScreen({super.key});

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
        'type': 'melee',
        'description': '',
        'name': '쇠지렛대',
        'ammunition': '-',
        'image': 'asset/img/쇠지렛대.png',
        'magazine': '1',
        'shotmode': '-',
        'damage': '60',
        'muzzleVelocity': '-',
        'stoppingPower': '6000',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '-',
        'spawnArea': '모든맵',
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'melee',
        'description': '',
        'name': '마체테',
        'ammunition': '-',
        'image': 'asset/img/마체테.png',
        'magazine': '1',
        'shotmode': '-',
        'damage': '60',
        'muzzleVelocity': '-',
        'stoppingPower': '6000',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '-',
        'spawnArea': '모든맵',
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'melee',
        'description': '',
        'name': '낫',
        'ammunition': '-',
        'image': 'asset/img/낫.png',
        'magazine': '1',
        'shotmode': '-',
        'damage': '60',
        'muzzleVelocity': '-',
        'stoppingPower': '6000',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '-',
        'spawnArea': '모든맵',
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'melee',
        'description': '',
        'name': '프라이팬',
        'ammunition': '-',
        'image': 'asset/img/프라이팬.png',
        'magazine': '1',
        'throwExplan': '-',
        'shotmode': '-',
        'damage': '80',
        'muzzleVelocity': '-',
        'stoppingPower': '40000',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '-',
        'spawnArea': '모든맵',
        'attachments': [],
        'attachments_name': [],
      },
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2AA00), // 배경색을 검정색으로 설정합니다.
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            '근접 무기',
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
