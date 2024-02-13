import 'package:flutter/material.dart';

import 'gun_info.dart';

class SrScreen extends StatelessWidget {
  const SrScreen({super.key});

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
        'type': 'sr',
        'description': '카구팔은 제2차 세계 대전 당시 사용되던 Kar98k으로, 게임에서는 광학장비를 장착할 수 있는 레일 마운트가 있어 스코프를 사용할 때 클립 장전에 방해되지 않는다. 헤드샷은 모든 헬멧에 치명타를 주며, 탄 클립으로 인해 장전이 오래 걸리는 단점을 가지고 있지만, 피해량이 높아 유용한 대중적인 SR이다. M24랑 비교했을 때 피해량이 높지만, 탄속이 느리다. ',
        'name': 'Kar98k',
        'ammunition': '7.62mm',
        'ammunition_image': 'asset/img/7탄.png',
        'image': 'asset/img/카구팔.png',
        'magazine': '5',
        'shotmode': '단발',
        'damage': '79',
        'muzzleVelocity': '785m/s',
        'stoppingPower': '16000',
        'ttk': '-',
        'dps': '43',
        'reloadTime': '4s (한발 : 1.690s)',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/8배율.png',
          'asset/img/15배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/sr소음기.png',
          'asset/img/sr소염기.png',
          'asset/img/sr보정기.png',
          'asset/img/칙패드.png',
          'asset/img/탄띠.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '8배율 스코프',
          '15배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(SR,DMR)',
          '소염기(SR,DMR)',
          '보정기(SR,DMR)',
          '칙패드',
          '탄띠(SG, SR, Win94)',
        ],
      },
      {
        'type': 'sr',
        'description': '게임에서는 Kar98k의 리스킨으로, 성능과 특징은 완전히 동일하나 격발음이 조금 둔탁하고 총신이 길어 엄폐물을 두고 대치할 때 조금 불리할 수 있다. 초기 개발 당시 모신나강 모델이 없어 Kar98k를 선택했으나 뒤늦게 모델이 들어왔거나 개발진이 직접 모델링하여 추가했을 가능성이 있다.',
        'name': '모신나강',
        'ammunition': '7.62mm',
        'ammunition_image': 'asset/img/7탄.png',
        'image': 'asset/img/모신나강.png',
        'magazine': '5',
        'shotmode': '단발',
        'damage': '79',
        'muzzleVelocity': '785m/s',
        'stoppingPower': '16000',
        'ttk': '-',
        'dps': '43',
        'reloadTime': '4s (한발 : 1.690s)',
        'spawnArea': '에란겔, 비켄디, 파라모, 데스턴',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/8배율.png',
          'asset/img/15배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/sr소음기.png',
          'asset/img/sr소염기.png',
          'asset/img/sr보정기.png',
          'asset/img/칙패드.png',
          'asset/img/탄띠.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '8배율 스코프',
          '15배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(SR,DMR)',
          '소염기(SR,DMR)',
          '보정기(SR,DMR)',
          '칙패드',
          '탄띠(SG, SR, Win94)',
        ],
      },
      {
        'type': 'sr',
        'description': '게임에서는 M24이 탄창을 사용하는 모습으로 Kar98k나 모신나강과 완벽한 호환성을 가지고 있으며, 빠른 탄속과 간편한 탄창식 장전이 특징이다. 피해량이 Kar98k와 모신나강에 비해 낮지만 AWM이나 Mk14와의 연계가 용이하며, 전술 재장전 시에는 탄창만 갈아끼우면 되어 재장전 시간이 짧다. 그러나 M24를 찾기가 상대적으로 어렵고, 대부분의 맵에서는 Kar98k나 모신나강보다 드물게 등장한다. 기존에 보급 무기였으나 현재 필드 드랍으로 바뀌었다.',
        'name': 'M24',
        'ammunition': '7.62mm',
        'ammunition_image': 'asset/img/7탄.png',
        'image': 'asset/img/m24.png',
        'magazine': '5',
        'shotmode': '단발',
        'damage': '75',
        'muzzleVelocity': '815m/s',
        'stoppingPower': '20000',
        'ttk': '-',
        'dps': '48',
        'reloadTime': '4.2s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/8배율.png',
          'asset/img/15배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/sr소음기.png',
          'asset/img/sr소염기.png',
          'asset/img/sr보정기.png',
          'asset/img/sr대탄.png',
          'asset/img/sr대퀵.png',
          'asset/img/칙패드.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '8배율 스코프',
          '15배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(SR,DMR)',
          '소염기(SR,DMR)',
          '보정기(SR,DMR)',
          '대용량 탄창(DMR, SR)',
          '대용량 퀵드로우 탄창(DMR, SR)',
          '칙패드',
        ],
      },
      {
        'type': 'sr',
        'description': 'AWM은 PUBG에서 보급 상자에서만 얻을 수 있는 .300 매그넘 탄을 사용하는 저격 소총으로, 매우 높은 피해량과 빠른 탄속을 자랑한다. 보급상자에서 나오는 무기 중 가장 강력한 피해량을 가지고 있으며, 헤드샷으로 모든 거리에서 적을 처치할 수 있다. 그러나 재장전이 느리고 전용 탄약인 .300 매그넘을 사용하기 때문에 탄 수급이 어렵다는 단점이 있다. 이에 따라 신중하게 사용해야 하며, 팀원과의 협력을 통해 탄약을 효율적으로 관리하는 것이 중요하다.',
        'name': 'AWM',
        'ammunition': '7.62mm',
        'ammunition_image': 'asset/img/300매그넘.png',
        'image': 'asset/img/awm.png',
        'magazine': '5',
        'shotmode': '단발',
        'damage': '105',
        'muzzleVelocity': '954m/s',
        'stoppingPower': '40000',
        'ttk': '-',
        'dps': '64.9',
        'reloadTime': '4.6s',
        'spawnArea': '보급 무기',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/8배율.png',
          'asset/img/15배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/sr소음기.png',
          'asset/img/sr소염기.png',
          'asset/img/sr보정기.png',
          'asset/img/sr대탄.png',
          'asset/img/sr대퀵.png',
          'asset/img/칙패드.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '8배율 스코프',
          '15배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(SR,DMR)',
          '소염기(SR,DMR)',
          '보정기(SR,DMR)',
          '대용량 탄창(DMR, SR)',
          '대용량 퀵드로우 탄창(DMR, SR)',
          '칙패드',
        ],
      },
      {
        'type': 'sr',
        'description': 'Win94은 접이식 2.7배율 스코프가 기본 장착된 상태로 PUBG에서 드랍되는 레버 액션 저격 소총이다. 빠른 차탄 장전과 8발의 장탄수, .45 탄을 사용하여 가볍고 편리한 사용성을 자랑하며, 높은 피해량으로 2레벨 헬멧을 입은 적을 한 발로 골라내는 강력함을 가지고 있다. 스코프 개조가 불가능하지만, 기본으로 장착되는 2.7배율 스코프는 직관적인 레티클을 제공하여 편리하다. 그러나 다른 SR에 비해 피해량이 낮고, 부착물이 제한적이며 카라킨을 제외한 맵에서는 대부분의 사람이 2레벨 헬멧을 착용하므로 적중력이 떨어진다. 2레벨 기준 99의 데미지가 들어간다.',
        'name': 'Win94',
        'ammunition': '.45 ACP',
        'ammunition_image': 'asset/img/45탄.png',
        'image': 'asset/img/win94.png',
        'magazine': '8',
        'shotmode': '단발',
        'damage': '66',
        'muzzleVelocity': '760m/s',
        'stoppingPower': '16000',
        'ttk': '-',
        'dps': '110',
        'reloadTime': '4s (한발 : 0.3S)',
        'spawnArea': '미라마, 카라킨, 헤이븐, 데스턴',
        'attachments': [
          'asset/img/탄띠.png',
        ],
        'attachments_name': [
          '탄띠(SG, SR, Win94)',
        ],
      },
      {
        'type': 'sr',
        'description': '보급전용으로 추가된 저격소총으로, 반자동으로 작동하며 6배율 조준경과 10발의 50구경 탄환이 장착된 상태로 획득 가능하다. 특히 높은 피해량과 강력한 차량 공격 능력을 가졌으며, 1200m/s의 뛰어난 탄속과 거의 없는 반동으로 명중률이 높다. 그러나 전용 탄약인 50구경 10발만 제공되며, 재장전이 불가능하여 사용에 제약이 따른다. 미라마의 보급 상자에서만 얻을 수 있어 획득이 어렵다.',
        'name': '링스 AMR',
        'ammunition': '50구경 탄환',
        'ammunition_image': 'asset/img/50구경.png',
        'image': 'asset/img/링스.png',
        'magazine': '10',
        'shotmode': '단발',
        'damage': '153.4',
        'muzzleVelocity': '1200m/s',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '-',
        'reloadTime': '-',
        'spawnArea': '보급 무기(미라마)',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/8배율.png',
          'asset/img/15배율.png',
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
          '8배율 스코프',
          '15배율 스코프',
          '캔티드 사이트',
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
            'SR - 저격 소총',
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
