import 'package:flutter/material.dart';
import 'package:pubg_gun_info/gun_screen/gun_attachment.dart';

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
            Row(
              children: [
                Expanded(
                    flex: 2, child: Image.asset(gunData['image'], height: 200,)),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black
                    ),
                      onPressed: () {
                        // 현재 선택된 총기의 부착물 리스트를 가져옵니다.
                        List<String> currentAttachments = gunData['attachments'] as List<String>;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Color(0xFFF2AA00),
                              content: Container(
                                width: double.maxFinite,
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 1,
                                  ),
                                  itemCount: currentAttachments.length,
                                  itemBuilder: (context, index) {
                                    // 현재 선택된 총기의 부착물 이미지를 그리드 형태로 표시합니다.
                                    return Image.asset(
                                      currentAttachments[index],
                                      fit: BoxFit.cover,
                                    );
                                  },
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('닫기', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  )),
                                  onPressed: () {
                                    Navigator.of(context).pop(); // 다이얼로그 닫기
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (_) => AttachmentScreen())
                        // );
                      child: Text(
                        '부착물',
                        style: contentStyle,
                      )),
                ),
              ],
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('장탄수 : ', style: contentStyle),
                  Text('${gunData['magazine']}', style: contentStyle),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('발사모드 : ', style: contentStyle),
                  Text('${gunData['shotmode']}', style: contentStyle),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('데미지 : ', style: contentStyle),
                  Text('${gunData['damage']}', style: contentStyle),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('탄속 : ', style: contentStyle),
                  Text('${gunData['muzzleVelocity']}', style: contentStyle),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('저지력 : ', style: contentStyle),
                  Text('${gunData['stoppingPower']}', style: contentStyle),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xFFF2AA00), // 배경색 투명도 조절
                            content: Text(
                              '',
                              style: contentStyle,
                            ),
                            actions: <Widget>[
                              Text(
                                '플레이어가 공격을 받으면 화면이 흔들리는 정도. 총기마다 저지력 수치가 다르며 머리를 맞는게 아닌 이상 크게 체감이 가지는 않는다.',
                                style: contentStyle.copyWith(color: Colors.black),
                              ),
                              TextButton(
                                child: Text('닫기', style: contentStyle.copyWith(
                                    fontSize: 15.0,
                                    color: Colors.black)),
                                onPressed: () {
                                  Navigator.of(context).pop(); // 다이얼로그 닫기
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.add, color: Colors.white),
                  )                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('TTK : ', style: contentStyle),
                  Text('${gunData['ttk']}', style: contentStyle),
                  Spacer(),
                  IconButton(onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Color(0xFFF2AA00), // 배경색 투명도 조절
                          content: Text(
                            '',
                            style: contentStyle,
                          ),
                          actions: <Widget>[
                            Text(
                              'TTK는 Time-To-Kill(타임 투 킬)의 약자로, 일반적으로 FPS, TPS 게임에서 "적을 사살하는데 걸리는 시간"을 뜻한다.',
                              style: contentStyle.copyWith(color: Colors.black),
                            ),
                            TextButton(
                              child: Text('닫기', style: contentStyle.copyWith(
                                  fontSize: 15.0,
                                  color: Colors.black)),
                              onPressed: () {
                                Navigator.of(context).pop(); // 다이얼로그 닫기
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }, icon: Icon(Icons.add,color: Colors.white,),)
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('최대 DPS : ', style: contentStyle),
                  Text('${gunData['dps']}', style: contentStyle),
                  Spacer(),
                  IconButton(onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Color(0xFFF2AA00), // 배경색 투명도 조절
                          content: Text(
                            '',
                            style: contentStyle,
                          ),
                          actions: <Widget>[
                            Text(
                              'Damage per Second의 약자이다. "초당 피해량"으로 번역된다. 초당 얼마나 많은 양의 피해를 입힐 수 있는지를 측정하는 척도이다.',
                              style: contentStyle.copyWith(color: Colors.black),
                            ),
                            TextButton(
                              child: Text('닫기', style: contentStyle.copyWith(
                                  fontSize: 15.0,
                                  color: Colors.black)),
                              onPressed: () {
                                Navigator.of(context).pop(); // 다이얼로그 닫기
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }, icon: Icon(Icons.add,color: Colors.white,),)
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('재장전 시간 : ', style: contentStyle),
                  Text('${gunData['reloadTime']}', style: contentStyle),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // 채우기 색상
                borderRadius: BorderRadius.circular(10), // 둥근 모서리
                border: Border.all(
                  color: Colors.black, // 테두리 색상
                  width: 1, // 테두리 두께
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // 그림자 색상
                    spreadRadius: 2, // 그림자 범위
                    blurRadius: 5, // 그림자 흐림 정도
                    offset: Offset(0, 3), // 그림자 위치
                  ),
                ],
              ),
              padding: EdgeInsets.all(8), // 안쪽 여백
              margin: EdgeInsets.symmetric(vertical: 5), // 바깥쪽 여백 (상하)
              child: Row(
                children: [
                  Text('등장 지역 : ', style: contentStyle),
                  Flexible(
                    child: Text('${gunData['spawnArea']}', style: contentStyle,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}

class _Attachment extends StatelessWidget {

  const _Attachment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
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
