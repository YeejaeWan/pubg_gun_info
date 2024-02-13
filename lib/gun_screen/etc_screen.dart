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
        'description': '보조무기 슬롯에 들어가며, 연막탄만을 발사하여 피해량은 없지만 시야 차단에 유용하다. 연막은 1차 연막 후 잠시 줄었다가 2차 연막이 퍼지며, 순간적으로 시야를 가리는 효과를 제공한다. 조준기는 판처파우스트와 유사하며, 발사는 견착 없이도 가능하다. 근중거리의 적에게 시야 차단 용도로 사용된다. 일정 거리에서 사용 시 한번에 연막이 펴진다. 하지만 너무 가까운 거리에서 사용 시 연막이 서서히 펴진다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'etc',
        'description': '석궁은 전용 탄약인 볼트를 사용한다. 무소음이며 화살 한 발의 공격력이 매우 높아 헤드샷은 150m 이내에서는 무조건 원킬이다. 그러나 최악의 탄속과 높은 낙차로 인해 실질적인 유효사거리가 짧으며, 단발식으로 한 발씩만 장전되어 지속 화력이 낮다. 하지만 근거리 전투나 엄폐물을 활용한 근중거리전에서는 강력한 성능을 발휘한다. 석궁은 무기 숙련도가 높은 사용자에게는 강력한 암살용무기로 작용할 수 있으며, 특정한 상황에서는 높은 성능을 발휘하기도 한다.',
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
        'description': '14.2 패치로 추가된 박격포는 60mm 박격포탄을 사용하며, 설치된 후에는 회수가 가능해진다. 설치 시간은 3초이며, 발사 자세는 마우스 휠이나 W키/S키로 조절할 수 있다. 최대 700m까지 사거리를 조절할 수 있으며, 한 번에 1초 딜레이를 두고 발사된다. 맞추기가 어려우나 피해량은 높으며, 대회에서는 전술적으로 사용되는 등 유용성을 보여준다. 그러나 지형 영향을 많이 받고, 낙차가 크며 기습에 취약하다는 단점이 있다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'etc',
        'description': '제2차 세계 대전 때 사용된 판처파우스트는 일회용 성형작약탄 대전차 무기로, 플레이어의 체력에는 별 영향이 없지만 차량과 같은 고체력 오브젝트를 상대로는 높은 피해량을 가진다. 주무기 슬롯을 차지하며, 직격 시 피해량이 높으며 벽과 사물을 관통하여 엄폐된 적을 공격할 수 있다. 하지만 후폭풍 피해와 심한 탄 낙차, 일회용 및 주무기 슬롯 1개 사용으로 단점을 가진다. BRDM의 카운터로 차량을 뚫고 대미지를 줄 수 있다. 벽과 사물 뒤에 적에게 대미지를 줄 수 있다는 이점이 있어 초반 교전에서 쓰기 좋다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'etc',
        'description': '권총 슬롯에 들어가며, 3발의 탄창으로 재장전이 불가능하다. 적에게 스턴을 줄 수 있다. 하지만 적은 총을 쏠 수 있어 정면에서 사용할때는 주의해야한다. 실전에서 활용하기는 힘든 총기이다.',
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
