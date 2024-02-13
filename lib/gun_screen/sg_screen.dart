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
        'description': '펌프액션 산탄총으로 불리는 S1897은 근거리에서 위협적인 피해량을 제공하지만, 펌프 작동으로 인한 지연 시간이 있어 승부를 가를 때 중요한 요소로 ㅁ. 이외에도 재장전 중 발생하는 뚜껑 소리로 인해 적의 위치가 노출되는 단점이 있으며, 펌프를 당기는 속도가 개선되었지만 여전히 S12K나 DBS에 비해 부족한 평가를 받는다. 엄폐물을 활용하여 한 명씩 격파할 수 있는 높은 효율을 가진다. 초기 S686에 밀리는 모습을 보였지만, 현재는 S686보다 많이 사용된다. ',
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
        'description': 'S686은 두 발을 빠르게 연속 발사하여 적을 제압하는 데 강점을 지녔으나, 장탄수가 단 2발로 제한되어 샷미스가 발생하면 불리한 상황이 될 수 있다. 빠른 재장전 속도와 확실한 제압 능력은 주요 장점으로, 1:1 전투에서 유리하나 다수의 적과의 교전에서는 부족함을 보인다. 따라서 S1897과 비교할 때 1:1 대결에서 강세를 보이지만 다수 대 다수 교전에서는 불리할 수 있다.',
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
        'description': 'S12K는 유일한 반자동 탄창식 산탄총으로, 장탄수가 많고 빠른 연사가 가능하며 재장전이 비교적 빠르다. 하지만 피해량이 다른 산탄총에 비해 낮고, 반동이 강한 편이며 초탄이 빗나가면 적이 생존할 가능성이 크다. 또한 초크를 달 수 없어 사정거리가 짧고, 근접전에서만 효과적인 무기로 평가된다. 하지만 덕빌을 착용할 수 있어 어느정도의 거리까지 커버가 된다.',
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
        'description': 'DBS는 특이한 펌프액션 + 더블배럴 구조로, S686과 S1897을 결합한 듯한 산탄총이다. 2발을 거의 딜레이 없이 발사할 수 있으며 14발의 장탄수를 자랑하며 근거리에서 압도적인 화력을 제공한다. 집탄률이 뛰어나지만 장전에 시간이 소요되며 드랍율이 낮아 얻기 어려운 단점을 가지고 있다. 초기 DBS는 보급 무기였으나, 현재 필드 드랍 무기로 변경되었다. 샷건 중에서 압도적인 1티어라고 할 수 있다.',
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
        'description': '단축형 산탄총은 S686과 비교해 길이가 짧고 개머리판이 없으며, 수평쌍대(Side by side) 형태를 가진다. 한 발에 21데미지의 펠릿을 9발 발사하며, 머리에 두 발을 맞히면 566의 대미지를 줘서 적을 로비에 보낼 수 있는 잠재력을 갖고 있다. 하지만 총열이 짧아 사거리가 다른 샷건들보다 짧고, 실내 근접전에서만 효과를 발휘하며, 외부에서의 발사음이 크게 달라진다. 쵸크를 부착 가능하여 어느정도의 거리가 커버 가능하다. 하지만 한정적인 맵에서 스폰한다는 단점과 연막 권총의 등장으로 사용이 낮아지고 있다.',
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
        'type': 'sg',
        'description': '18.2 패치를 통해 출시된 O12는 필드드랍 자동 산탄총으로, 새로운 12게이지 슬러그 탄을 사용한다. 총열이 짧아 사거리가 짧지만, 피해량은 거리에 따라 크게 감소하지 않으며 연사 기능을 갖추고 있다. 그러나 반동이 매우 심하고 전용 탄약 수급이 어려우며, 반동 제어에 어려움이 있어 활용이 제한된다. 초근접 전투에서는 높은 대미지와 연사 기능을 활용할 수 있으나 장거리에서는 효과가 떨어진다. DPS는 720으로 연사 총기 중 2등이다.',
        'name': 'O12',
        'image': 'asset/img/o12.png',
        'ammunition': '슬러그탄',
        'ammunition_image': 'asset/img/12게이지슬러그.png',
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
