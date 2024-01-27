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
    int baseMagazine = int.tryParse(gunData['magazine']) ?? 0;

    List<String> noMagazineGuns = [
      'FAMAS',
      'Kar98k',
      '모신나강',
      'Win94',
      '링스 AMR',
      'S12K',
      'S1897',
      'S686',
      'DBS',
      '소드 오프',
      'R45',
      'R1895',
      'DP-28',
      'MG3',
      'M79',
      'Stun Gun',
      '판처파우스트'
    ];
    Map<String, int> extendedMagazines = {
      'MK47 Mutant': 12,
      'M16A4': 12,
      'M416': 12,
      'SCAR-L': 12,
      'G36C': 12,
      'QBZ95': 12,
      'K2': 12,
      'AUG A3': 12,
      'AKM': 12,
      'Beryl M762': 12,
      '그로자': 12,
      'ACE32': 12,
      'MP5K': 12,
      'Mini14': 12,
      'QBU88': 12,
      'MK12': 12,
      'SKS': 12,
      'SLR': 12,
      'MK14': 12,
      'VSS': 12,
      'UMP45': 12,
      'Micro UZI': 12,
      'MP9': 10,
      'UMP45': 12,
      '드라구노프': 10,
      '토미건': 25,
      'Vector': 16,
      'M24': 3,
      'AWM': 3,
      'S12K': 6,
      'Deagle': 4,
      '스콜피온': 22,
      'P18C': 13,
      'P92': 7,
      'P1911': 7,
      'M249': 85,
    };
    Map<String, int> quickdrawMagazines = {
      'MK47 Mutant': 10,
      'M16A4': 10,
      'M416': 10,
      'SCAR-L': 10,
      'G36C': 10,
      'QBZ95': 10,
      'K2': 10,
      'AUG A3': 10,
      'AKM': 10,
      'Beryl M762': 10,
      '그로자': 10,
      'ACE32': 10,
      'MP5K': 10,
      'UMP45': 10,
      'Micro UZI': 10,
      'Mini14': 10,
      'QBU88': 10,
      'MK12': 10,
      'SKS': 10,
      'SLR': 10,
      'MK14': 10,
      'VSS': 10,
      'MP9': 5,
      '드라구노프': 8,
      '토미건': 20,
      'Vector': 14,
      'M24': 2,
      'AWM': 2,
      'S12K': 5,
      'Deagle': 3,
      '스콜피온': 20,
      'P18C': 8,
      'P92': 5,
      'P1911': 5,
      'M249': 75,
    };

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
                  flex: 2,
                  child: Image.asset(gunData['image'], height: 200),
                ),
                Flexible(
                  child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {
                        List<String> currentAttachments =
                            gunData['attachments'] as List<String>;
                        List<String> currentAttachmentsName =
                            gunData['attachments_name'] as List<String>;

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Color(0xFFF2AA00),
                              content: SingleChildScrollView(
                                child: Wrap(
                                  alignment: WrapAlignment.start,
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  children: List<Widget>.generate(
                                      currentAttachments.length, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            currentAttachmentsName[index],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Image.asset(
                                            currentAttachments[index],
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('닫기',
                                      style: TextStyle(
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
            Column(
              children: [
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
                      Text('사용 탄약 : ', style: contentStyle),
                      Text('${gunData['ammunition']}', style: contentStyle),
                      Spacer(),
                      Image.asset(gunData['ammunition_image']),
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
                      Text('장탄수 : ', style: contentStyle),
                      Text(
                        '${gunData['magazine']}',
                        style: contentStyle,
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          if (noMagazineGuns.contains(gunData['name'])) {
                            // 탄창이 들어가지 않는 총기에 대한 처리
                            showNoMagazineDialog(context, contentStyle);
                          } else {
                            // 탄창이 추가되는 총기에 대한 처리
                            int extraExtendedMagazine =
                                extendedMagazines[gunData['name']] ?? 0;
                            int extraQuickdrawMagazine =
                                quickdrawMagazines[gunData['name']] ?? 0;
                            showExtendedMagazineDialog(
                                context,
                                baseMagazine,
                                extraExtendedMagazine,
                                extraQuickdrawMagazine,
                                contentStyle);
                          }
                        },
                        icon: Icon(Icons.add, color: Colors.white),
                      ),
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
                                backgroundColor:
                                    Color(0xFFF2AA00), // 배경색 투명도 조절
                                content: Text(
                                  '',
                                  style: contentStyle,
                                ),
                                actions: <Widget>[
                                  Text(
                                    '플레이어가 공격을 받으면 화면이 흔들리는 정도. 총기마다 저지력 수치가 다르며 머리를 맞는게 아닌 이상 크게 체감이 가지는 않는다.',
                                    style: contentStyle.copyWith(
                                        color: Colors.black),
                                  ),
                                  TextButton(
                                    child: Text('닫기',
                                        style: contentStyle.copyWith(
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
                      )
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
                      Text('TTK : ', style: contentStyle),
                      Text('${gunData['ttk']}', style: contentStyle),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor:
                                    Color(0xFFF2AA00), // 배경색 투명도 조절
                                content: Text(
                                  '',
                                  style: contentStyle,
                                ),
                                actions: <Widget>[
                                  Text(
                                    'TTK는 Time-To-Kill(타임 투 킬)의 약자로, 일반적으로 FPS, TPS 게임에서 "적을 사살하는데 걸리는 시간"을 뜻한다.',
                                    style: contentStyle.copyWith(
                                        color: Colors.black),
                                  ),
                                  TextButton(
                                    child: Text('닫기',
                                        style: contentStyle.copyWith(
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
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
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
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor:
                                    Color(0xFFF2AA00), // 배경색 투명도 조절
                                content: Text(
                                  '',
                                  style: contentStyle,
                                ),
                                actions: <Widget>[
                                  Text(
                                    'Damage per Second의 약자이다. "초당 피해량"으로 번역된다. 초당 얼마나 많은 양의 피해를 입힐 수 있는지를 측정하는 척도이다.',
                                    style: contentStyle.copyWith(
                                        color: Colors.black),
                                  ),
                                  TextButton(
                                    child: Text('닫기',
                                        style: contentStyle.copyWith(
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
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
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
                        child: Text(
                          '${gunData['spawnArea']}',
                          style: contentStyle,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  // 탄창이 들어가지 않는 총기 처리 함수
  void showNoMagazineDialog(BuildContext context, TextStyle contentStyle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFFF2AA00), // 배경색 투명도 조절
          content: Text(
            '탄창이 들어가지 않음.',
            style: contentStyle.copyWith(color: Colors.black, fontSize: 25.0),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('닫기',
                  style: contentStyle.copyWith(
                      fontSize: 15.0, color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop(); // 다이얼로그 닫기
              },
            ),
          ],
        );
      },
    );
  }
  //대용량, 대용량 퀵드로우 탄창 별 탄약 수 증가량 함수
  void showExtendedMagazineDialog(
      BuildContext context,
      int baseMagazine,
      int extraExtendedMagazine,
      int extraQuickdrawMagazine,
      TextStyle contentStyle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFFF2AA00), // 배경색 설정
          content: Column(
            mainAxisSize: MainAxisSize.min, // Column의 크기를 자식에 맞게 설정
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '기본 탄창: $baseMagazine',
                style: contentStyle.copyWith(color: Colors.black, fontSize: 19.0),
              ),
              Text(
                '대용량 탄창: ${baseMagazine + extraExtendedMagazine}',
                style: contentStyle.copyWith(color: Colors.black, fontSize: 19.0),
              ),
              Text(
                '대용량 퀵드로우 탄창: ${baseMagazine + extraQuickdrawMagazine}',
                style: contentStyle.copyWith(color: Colors.black, fontSize: 19.0),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('닫기', style: contentStyle.copyWith(fontSize: 15.0, color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop(); // 다이얼로그 닫기
              },
            ),
          ],
        );
      },
    );

  }
}
