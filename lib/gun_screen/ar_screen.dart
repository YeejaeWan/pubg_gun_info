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
    final List<Map<String, String>> arList = [

      {'name': 'M16A4',
        'image':'asset/img/m16a4.png',
      'magazine': '30',
      'damage': '41',
      'muzzleVelocity': '900m/s',
      'stoppingPower': 'High',
      'ttk': '0.3s',
      'dpsSingle': '500',
      'dpsAuto': '600',
      'dpsBurst': '550',
      'reloadTime': '2.2s',
      'spawnArea': 'Erangel',},
      {'name': 'M416', 'image': 'asset/img/m416.png'},
      {'name': 'SCAR-L', 'image': 'asset/img/scar-l.png'},
      {'name': 'G36C', 'image': 'asset/img/g36c.png'},
      {'name': 'QBZ95', 'image': 'asset/img/qbz95.png'},
      {'name': 'K2', 'image': 'asset/img/k2.png'},
      {'name': 'AUG A3', 'image': 'asset/img/aug_a3.png'},
      {'name': 'FAMAS', 'image': 'asset/img/famas_g2.png'},
      {'name': 'AKM', 'image': 'asset/img/akm.png'},
      {'name': 'Beryl M762', 'image': 'asset/img/beryl_m762.png'},
      {'name': 'MK47 Mutant', 'image': 'asset/img/mk47_mutant.png'},
      {'name': '그로자', 'image': 'asset/img/groza.png'},
      {'name': 'ACE32', 'image': 'asset/img/ace32.png'},

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
                            MaterialPageRoute(builder: (_) => GunInfoScreen(gunData: arList[index])),
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


