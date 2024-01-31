import 'package:flutter/material.dart';

import 'gun_info.dart';

class ThrowWeaponScreen extends StatelessWidget {
  const ThrowWeaponScreen({super.key});

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
        'type': 'throw',
        'name': '수류탄',
        'ammunition': '-',
        'image': 'asset/img/수류탄.png',
        'magazine': '-',
        'throwExplan': '5초 후 폭발하여 주변에 큰 피해를 준다.',
        'damage': '500',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '',
        'spawnArea': '모든맵',
        'attachments': [

        ],
        'attachments_name': [
        ],
      },
      {
        'type': 'throw',
        'name': '교란 수류탄',
        'ammunition': '-',
        'image': 'asset/img/교란.png',
        'magazine': '-',
        'throwExplan': '투척 시 떨어진 위치에서 랜덤한 총기의 사격 소음을 낸다.',
        'damage': '-',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '',
        'spawnArea': '모든맵',
        'attachments': [

        ],
        'attachments_name': [
        ],
      },
      {
        'type': 'throw',
        'name': '섬광탄',
        'ammunition': '-',
        'image': 'asset/img/섬광탄.png',
        'magazine': '-',
        'throwExplan': '폭발을 바라보고있는 적에게 최대 5.5초동안 눈과 귀를 마비시킨다.',
        'damage': '-',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '',
        'spawnArea': '모든맵',
        'attachments': [

        ],
        'attachments_name': [
        ],
      },
      {
        'type': 'throw',
        'name': '연막탄',
        'ammunition': '-',
        'image': 'asset/img/연막탄.png',
        'magazine': '-',
        'throwExplan': '던지는 지점에 연막을 생성시킨다.',
        'damage': '-',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '',
        'spawnArea': '모든맵',
        'attachments': [

        ],
        'attachments_name': [
        ],
      },
      {
        'type': 'throw',
        'name': '화염병',
        'ammunition': '-',
        'image': 'asset/img/화염병.png',
        'magazine': '-',
        'throwExplan': '착탄지점에 지속 대미지를 주는 불길을 형성한다. '
            '불길은 주변으로 번지고 지속적인 데미지를 준다',
        'damage': '-',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '20/s',
        'reloadTime': '',
        'spawnArea': '모든맵',
        'attachments': [

        ],
        'attachments_name': [
        ],
      },
      {
        'type': 'throw',
        'name': '블루존 수류탄',
        'ammunition': '-',
        'image': 'asset/img/블루존.png',
        'magazine': '-',
        'throwExplan': ' 던지면 반경 10m 까지 블루존이 퍼지면서 10초 동안 유지되고, 5초 동안 줄어든다. '
            '중복으로 데미지를 줄 수 있다.',
        'damage': '-',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '10/s',
        'reloadTime': '',
        'spawnArea': '모든맵',
        'attachments': [

        ],
        'attachments_name': [
        ],
      },
      {
        'type': 'throw',
        'name': '점착 폭탄',
        'ammunition': '-',
        'image': 'asset/img/점착폭탄.png',
        'magazine': '-',
        'throwExplan': '투척 시 벽이나 바닥에 달라붙으며 일정 시간 뒤 들리다가 폭발한다.',
        'damage': '-',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '500',
        'reloadTime': '',
        'spawnArea': '카라킨',
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
            '투척 무기',
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
