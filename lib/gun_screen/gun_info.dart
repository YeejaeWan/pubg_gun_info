import 'package:flutter/material.dart';
class GunInfoScreen extends StatelessWidget {
  final Map<String, dynamic> gunData;

  const GunInfoScreen({Key? key, required this.gunData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle headingStyle = TextStyle(
      color: Colors.white,
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    );
    TextStyle contentStyle = TextStyle(
      color: Colors.white,
      fontSize: 25.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(gunData['name'], style: headingStyle),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Color(0xFFF2AA00),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(gunData['image'], height: 200),
            Text('장탄수: ${gunData['magazine']}', style: contentStyle),
            Text('데미지: ${gunData['damage']}', style: contentStyle),
            Text('탄속: ${gunData['muzzleVelocity']}', style: contentStyle),
            Text('저지력: ${gunData['stoppingPower']}', style: contentStyle),
            Text('TTK: ${gunData['ttk']}', style: contentStyle),
            Text('DPS 단발: ${gunData['dpsSingle']}', style: contentStyle),
            Text('DPS 연사: ${gunData['dpsAuto']}', style: contentStyle),
            Text('DPS 점사: ${gunData['dpsBurst']}', style: contentStyle),
            Text('재장전 시간: ${gunData['reloadTime']}', style: contentStyle),
            Text('등장 지역: ${gunData['spawnArea']}', style: contentStyle),
          ],
        ),
      ),
    );
  }
}

// final List<Gun> guns = [
//   Gun(
//     name: 'M16A4',
//     description: '5.56mm 돌격 소총',
//     imageUrl: 'asset/img/m16a4.png',
//     specifications: {
//       '장탄수': '30발',
//       '데미지': '43',
//       '탄속 ': '910m/s',
//       '저지력 ' : '8000',
//       'TTK' : '0.3',
//       'DPS(단발/점사)' : '430/573',
//       '재장전시간' : '3.6초',
//       '등장지역' : '모든맵',
//     },
//   ),
//   // 다른 총기 데이터 추가...
// ];