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
        'description': 'P92는 초반에 주로 사용되는 권총으로, P1911과 라이벌 격이다. 탄약은 9mm를 사용하며, 장탄수가 15발로 세 번째로 많다. 정확한 사격보다는 유효 타격을 입히기 위한 지향사격이 유리하며, 도트 사이트 장착 시 정확도가 높아진다. .45ACP 권총과 비교해 초기에는 총알을 씹는 현상과 연사력 부족으로 평가를 받았으나, 소음기 장착 시 특이한 소리를 내며 최소 피해량이 0인 특징을 가진다.',
        'name': 'P92',
        'ammunition': '9mm',
        'ammunition_image': 'asset/img/9탄.png',
        'image': 'asset/img/p92.png',
        'magazine': '15',
        'shotmode': '단발',
        'damage': '34',
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
        'description': ' 9mm 탄약을 사용하지만 P92와는 달리 피해량이 낮아서 팔다리에 10발, 몸통에 5발, 머리에 3발을 맞혀야 적을 처치할 수 있다. 그러나 풀 오토 사격이 가능하며 1000 RPM의 높은 연사속도를 가지고 있어 DPS는 380대로 경기 초반과 운전석 라이딩샷에 효과적이다. 반면 반동이 강하고 최소 대미지가 0이며, 대미지가 떨어지는 거리가 444m 이상인 점이 단점으로 작용한다.',
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
        'description': '극초반 파밍전에서 P1911은 몸샷으로 방어구를 입지 않은 적에게 3발 컷으로 강력한 성능을 보여주며, 대용량 탄창이 필요하다.',
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
        'description': ' 단발 피해량이 62로 레벨 3 헬멧 사용자도 2발만에 잠재울 정도로 강력하나 반동이 강한 편이며, 극초반에는 다른 총과 마찬가지로 큰 영향을 미치지 않는다. 하지만 잘 컨트롤된다면 갑작스런 교전에서 강력한 효과를 발휘할 수 있다. 또한 탄속이 가장 빠르기 때문에 먼 거리에서도 유효하게 사용할 수 있다.',
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
        'description': '최초의 개머리판과 전방 손잡이를 가진 보조무기인 Skorpion은 대용량 탄창 장착 시 드럼 탄창으로 변환되어 42/40발의 장탄수를 가진다. 연사력은 850RPM으로 높지만 고연사총기와는 차별화되며, 단발 피해량이 낮아 DPS가 낮은 편이다. 그러나 안정적인 반동과 높은 장탄수로 전투지속력이 뛰어나며, 풀파츠 장착 시 무반동에 가까운 사격이 가능하다. 단점으로는 최악의 단발 피해량과 정조준 시 시야를 가리는 탄피가 있으며, 사용 빈도가 낮고 초근거리 화력에서 P18C보다 떨어지는 편이다.',
        'name': 'Skorpion',
        'ammunition': '9mm',
        'ammunition_image': 'asset/img/9탄.png',
        'image': 'asset/img/스콜피온.png',
        'magazine': '20',
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
        'description': '스피드로더를 통해 빠르게 탄환을 장전할 수 있으며, 패치로 대미지가 증가하여 Deagle을 압도할 정도의 화력을 보유하게 되었다. 연사력이 빠르고 도트와 레이저 장착이 가능하다.',
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
        'description': '소음기를 제외한 개조 부품이 없으며, 무려 64의 데미지와 압도적인 헤드샷 데미지를 자랑하며 3뚝을 헤드 투탭으로 사출시키는 강력한 파워를 가지고 있다. 그러나 장전 시간이 길고 반동 패턴이 개판이며, 스피드로더가 없어 한 발씩 손으로 장전해야 하는 불편함이 있다. 최근 무반동 버그가 있었으나 패치를 통해 해결되었다.',
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
