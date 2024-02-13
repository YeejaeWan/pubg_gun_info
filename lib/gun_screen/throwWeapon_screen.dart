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
        'description': '수류탄은  어떤 방어구 상태에든 상관없이 상대를 즉사시킬 수 있으며, 엄폐물 뒤나 건물 안의 적에게 효과적이다. 업데이트를 통해 너프되었지만 여전히 강력한 피해를 입히는 무기로, 게임 내에서 수류탄을 더 많이 파밍하는 것이 승리에 큰 영향을 미친다. 쿠킹 시간을 잘 맞추면 100M 이내의 적을 한번에 죽일 수 있는 아주 강력한 투척 무기이다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'throw',
        'description': '전장 소리를 모방하는 실사격 훈련 도구인 이 수류탄은 랜덤한 총기 사격 소음을 발생시키며, 주로 낚시용으로 활용된다. 하지만 실제로는 사용빈도가 낮아 잘 쓰이지 않는다. 데미지가 없고 시각적 효과도 미미하여 실전에서는 주로 무시되며, 경쟁전에서는 등장하지 않는 아이템이다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'throw',
        'description': '폭발 시 주변 모든 사람의 시각과 청각을 최대 5.5초 동안 마비시키며, 효과 범위는 6.5m이다. 이는 주로 낚시나 전투 중에 사용되며, 적의 시야를 제한하여 푸시할 수 있는 기회를 제공한다. 섬광탄을 던지고 푸시를 하는 경우가 많다. 무게도 다른 투척 무기에 비해 가벼워 수류탄 및 화염병 같은 투척 무기가 안 나올 시, 여러 개를 들고다니는 것이 좋다. 잘못 던질 경우 자신도 섬광 피해를 입을 수 있으니 조심해야된다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'throw',
        'description': '연막탄은 다양한 색상의 연기(스킨 보유 시)를 흩뿌리며, 착탄 지점에 돔 형태의 연막을 생성한다. 주로 시야 차단이나 전략적 이동을 위해 사용되며, 연막 안에서는 프레임이 떨어지는 등의 부작용이 있을 수 있다. 열화상 스코프나 스포팅 스코프와 같은 카운터가 있지만, 전략적으로 활용되며, 프로게이머들도 적극적으로 활용한다. 후반 자기장 싸움에서 수류탄 다음으로 중요한 역할을 한다. 안전하게 시체 파밍 , 팀원 소생 등 여러 방면에서 사용이 가능하기 때문에 2~3개는 무조건 들고 다니는 것이 좋다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'throw',
        'description': '화염병은 휘발유를 담은 술병에 천을 넣은 것으로, 지속적인 불길을 형성하여 피해를 입힌다. 최근 업데이트로 효율성이 크게 향상되어, 실내전이나 엄폐물 뒤의 적을 겨냥할 때 유용하며, 불길에 닿을 경우 초당 피해량이 높아지는데, 이는 상당한 위협으로 작용한다. 화염병을 공격으로 막을 수 있는 등의 카운터가 있지만, 전략적으로 사용되는 상황이 많아졌다. 나무 문에 화염병을 던지면 깨지면서 안으로 화염이 번지기 때문에 해우소 같은 건물을 뚫을 때 많이 사용된다. 또한 나무에 엄폐한 상대에게 던지면 불길이 나무 뒤까지 번지기 때문에 유용하게 사용이 가능하다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'throw',
        'description': '블루존 수류탄은 던지면 10m 반경 내에 블루존을 형성하여 10초 동안 지속되며, 초당 피해량이 10에 육박하여 집안이나 엄폐물에 숨은 적을 강제로 이동시키는데 효과적이다. BRDM 내부에 있는 적도 공격할 수 있어 전략적인 활용이 가능하다. 1개의 블루존 수류탄은 구급 상자로 버티기 가능하다. 하지만 블루존 수류탄은 여러 개가 데미지 중첩이 되 기 때문에 팀원과 같이 던지면 후반부 자기장과 비슷한 데미지를 줄 수 있다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'throw',
        'description': '카라킨에서만 나오는 특수 투척무기인 멜로디는 투척 시 벽이나 바닥에 달라붙고 일정 시간 후에 폭발하는데, 카라킨에서 벽 파괴나 수류탄 역할을 할 때 사용된다. 그러나 쿠킹이 불가능하며 날아가는 거리가 짧고 소음이 크기 때문에 필요 이상으로 챙기는 것은 바람직하지 않다. 또한 피해 거리가 짧고 튕기지 않기 때문에 공격에는 적합하지 않고, 주로 함정으로 활용된다. 특히 적이 후퇴할 때 예상 경로에 설치하면 효과적이다.',
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
        'attachments': [],
        'attachments_name': [],
      },
      {
        'type': 'throw',
        'description': '카라킨 이외의 맵에서 드물게 스폰되며 보급상자에서도 얻을 수 있는 C4 수류탄은 벽이나 사물, 차량에 붙어 폭발하는데, 폭발 반경이 상당히 넓고 매우 강력하여 건물 존버를 방해하는 용도로 사용된다. 피해 범위가 넓어 건물 외벽이나 1층 내에서 사용하면 상당한 효과를 가져오며, 특히 3층 아파트 등의 건물은 전체가 폭발 범위에 들어가기 때문에 삐 소리가 들리면 즉시 대피해야 한다. 차량에도 붙어 폭발할 수 있어 자폭 차량으로 활용할 수 있으며, 전략적으로 적에게 치명적인 타격을 입힐 수 있다. ',
        'name': 'C4',
        'ammunition': '-',
        'image': 'asset/img/C4.png',
        'magazine': '-',
        'throwExplan': '신호음이 울리기 시작하고 던진 후 16초 후 자동으로 폭발하는 강력한 폭탄',
        'damage': '-',
        'muzzleVelocity': '-',
        'stoppingPower': '-',
        'ttk': '-',
        'dps': '4000',
        'reloadTime': '',
        'spawnArea': '에란겔, 미라마, 사녹, 비켄디, 태이고, 데스턴',
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
