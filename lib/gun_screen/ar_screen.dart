import 'package:flutter/material.dart';
import 'package:pubg_gun_info/gun_screen/gun_info.dart';

class ArScreen extends StatelessWidget {
  const ArScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: 15.0,
      fontWeight: FontWeight.w700,
    );

    // 총기 리스트를 정의합니다.
    final List<Map<String, dynamic>> arList = [
      {
        'name': 'M16A4',
        'image': 'asset/img/m16a4.png',
        'magazine': '30',
        'shotmode': '단발/3점사',
        'damage': '41',
        'muzzleVelocity': '900m/s',
        'stoppingPower': '8000',
        'ttk': '0.3s',
        'dps': '573',
        'reloadTime': '2.2s',
        'spawnArea': '모든맵',
        'attachments' : [
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
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/개머리판.png',
          'asset/img/중량개머리판.png',
        ],
      },
      {
        'name': 'M416',
        'image': 'asset/img/m416.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '40',
        'muzzleVelocity': '880m/s',
        'stoppingPower': '3500',
        'ttk': '0.428s',
        'dps': '466.67',
        'reloadTime': '3.2s',
        'spawnArea': '모든맵',
      },
      {
        'name': 'SCAR-L',
        'image': 'asset/img/scar-l.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '42',
        'muzzleVelocity': '870m/s',
        'stoppingPower': '9000',
        'ttk': '0.48s',
        'dps': '437.5',
        'reloadTime': '3.2s',
        'spawnArea': '모든맵',
      },
      {
        'name': 'G36C',
        'image': 'asset/img/g36c.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '41',
        'muzzleVelocity': '870m/s',
        'stoppingPower': '-',
        'ttk': '0.428s',
        'dps': '478.4',
        'reloadTime': '3.4s',
        'spawnArea': '비켄디, 카라킨, 헤이븐, 데스턴',
      },
      {
        'name': 'QBZ95',
        'image': 'asset/img/qbz95.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '42',
        'muzzleVelocity': '930m/s',
        'stoppingPower': '9000',
        'ttk': '0.462s',
        'dps': '455',
        'reloadTime': '3.3s',
        'spawnArea': '사녹, 론도, 태이고',
      },
      {
        'name': 'K2',
        'image': 'asset/img/k2.png',
        'magazine': '30',
        'shotmode': '단발/연사/점사',
        'damage': '41',
        'muzzleVelocity': '880m/s',
        'stoppingPower': '6000',
        'ttk': '0.428s',
        'dps': '478.4',
        'reloadTime': '3.2s',
        'spawnArea': '태이고',
      },
      {
        'name': 'AUG A3',
        'image': 'asset/img/aug_a3.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '41',
        'muzzleVelocity': '890m/s',
        'stoppingPower': '9000',
        'ttk': '0.425s',
        'dps': '492',
        'reloadTime': '3.6666s',
        'spawnArea': '모든맵',
      },
      {
        'name': 'FAMAS',
        'image': 'asset/img/famas_g2.png',
        'magazine': '30',
        'shotmode': '단발/연사/점사',
        'damage': '39',
        'muzzleVelocity': '925m/s',
        'stoppingPower': '-',
        'ttk': '0.333s',
        'dps': '585',
        'reloadTime': '3.6s',
        'spawnArea': '보급 무기',
      },
      {
        'name': 'AKM',
        'image': 'asset/img/akm.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '47',
        'muzzleVelocity': '715m/s',
        'stoppingPower': '10000',
        'ttk': '0.4s',
        'dps': '470',
        'reloadTime': '3.22s',
        'spawnArea': '모든맵',
      },
      {
        'name': 'Beryl M762',
        'image': 'asset/img/beryl_m762.png',
        'magazine': '30',
        'shotmode': '단발/연사/점사',
        'damage': '44',
        'muzzleVelocity': '749m/s',
        'stoppingPower': '10000',
        'ttk': '0.42s',
        'dps': '513.3',
        'reloadTime': '3.1s',
        'spawnArea': '모든맵',
      },
      {
        'name': 'MK47 Mutant',
        'image': 'asset/img/mk47_mutant.png',
        'magazine': '20',
        'shotmode': '단발/2점사',
        'damage': '49',
        'muzzleVelocity': '780m/s',
        'stoppingPower': '10000',
        'ttk': '0.3',
        'dps': '653.3',
        'reloadTime': '3.35s',
        'spawnArea': '모든맵',
      },
      {
        'name': '그로자',
        'image': 'asset/img/groza.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '47',
        'muzzleVelocity': '715m/s',
        'stoppingPower': '10000',
        'ttk': '0.32s',
        'dps': '587.5',
        'reloadTime': '3s',
        'spawnArea': '보급 무기',
      },
      {
        'name': 'ACE32',
        'image': 'asset/img/ace32.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '43',
        'muzzleVelocity': '720m/s',
        'stoppingPower': '-',
        'ttk': '0.44s',
        'dps': '487.3',
        'reloadTime': '3s',
        'spawnArea': '모든맵',
      },
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2AA00), // 배경색을 검정색으로 설정합니다.
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'AR - 돌격 소총',
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
            itemCount: arList.length, // 총기의 갯수만큼 아이템을 생성합니다.
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
                          arList[index]['image']!, // 이미지 경로를 사용합니다.
                          fit: BoxFit.contain, // 이미지를 비율에 맞게 조정합니다.
                        ),
                        iconSize: 200, // 아이콘의 크기를 지정합니다.
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) =>
                                    GunInfoScreen(gunData: arList[index])),
                          );
                        },
                      ),
                    ),
                    Text(
                      arList[index]['name']!, // 총기의 이름을 표시합니다.
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
