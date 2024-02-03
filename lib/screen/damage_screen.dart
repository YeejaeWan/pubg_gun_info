import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class DamageScreen extends StatefulWidget {
  @override
  _DamageScreenState createState() => _DamageScreenState();
}

class WeaponOption {
  final String name;
  final String imagePath;

  WeaponOption(this.name, this.imagePath);
}

class _DamageScreenState extends State<DamageScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showARCoefficients = true; // AR 계수 이미지를 보이게 할지 여부를 저장하는 변수
  int _selectedHelmet = 0;
  int _selectedArmor = 0;
  String selectedWeapon = 'M416';

  List<WeaponOption> weaponOptions = [
    WeaponOption('M416', 'asset/img/m416.png'),
    WeaponOption('AKM', 'asset/img/akm.png'),
    WeaponOption('SCAR-L', 'asset/img/scar-l.png'),
    WeaponOption('M16A4', 'asset/img/m16a4.png'),
    WeaponOption('G36C', 'asset/img/g36c.png'),
    WeaponOption('QBZ95', 'asset/img/qbz95.png'),
    WeaponOption('AUG A3', 'asset/img/aug_a3.png'),
    WeaponOption('FAMAS', 'asset/img/famas_g2.png'),
    WeaponOption('Beryl M762', 'asset/img/beryl_m762.png'),
    WeaponOption('Mk47 Mutant', 'asset/img/mk47_mutant.png'),
    WeaponOption('그로자', 'asset/img/groza.png'),
    WeaponOption('ACE32', 'asset/img/ace32.png'),
    WeaponOption('K2', 'asset/img/k2.png'),
    // 다른 총기 옵션 추가
  ];

  List<String> arList = [
    'AR 부위별 데미지 계수',
    'M416',
    'M16A4',
    'SCAR-L',
    'G36C',
    'QBZ95',
    'K2',
    'AUG A3',
    'FAMAS',
    'AKM',
    'Beryl M762',
    'Mk47 Mutant',
    '그로자',
    'ACE32'
  ];
  TextStyle headTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );
  TextStyle bodyTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );
  TextStyle armTextStyle = TextStyle(
    color: Color(0xff0024FF),
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );
  TextStyle legTextStyle = TextStyle(
    color: Color(0xff1E4D0F),
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );

  // 이미지 경로들을 추가하세요.
  final List<String> helmetImages = [
    'asset/img/x.png',
    'asset/img/1레벨헬멧.png',
    'asset/img/2레벨헬멧.png',
    'asset/img/3레벨헬멧.png',
  ];
  final List<String> armorImages = [
    'asset/img/x.png',
    'asset/img/깨진갑옷.png',
    'asset/img/1레벨갑옷.png',
    'asset/img/2레벨갑옷.png',
    'asset/img/3레벨갑옷.png',
  ];
  final List<String> arWeapons = [
    'M16A4',
    'M416',
    'SCAR-L',
    'G36C',
    'QBZ95',
    'K2',
    'AUG A3',
    'FAMAS',
    'AKM',
    'Beryl M762',
    'Mk47 Mutant',
    '그로자',
    'ACE32'
  ];

  Map<String, double> baseDamageMap = {
    'M16A4': 43.0,
    'M416': 40.0,
    'SCAR-L': 41.0,
    'G36C': 41.0,
    'QBZ95': 42.0,
    'K2': 41.0,
    'AUG A3': 41.0,
    'FAMAS': 39.0,
    'AKM': 47.0,
    'Beryl M762': 44.0,
    'Mk47 Mutant': 49.0,
    '그로자': 47.0,
    'ACE32': 43.0,
    // 다른 총기들의 기본 데미지도 추가
  };
  Map<String, double> baseWeaponDamageCoefficients = {
    '머리': 1.0,
    '목': 0.75,
    '어깨': 1.0,
    '가슴': 1.1,
    '명치': 1.0,
    '명치 상복부': 0.95,
    '명치 하복부': 1.0,
    '팔뚝': 0.6,
    '전완근': 0.5,
    '손': 0.3,
    '허벅지': 0.6,
    '종아리': 0.5,
    '발': 0.3,
  };

  // 각 부위별 데미지 계수를 정의합니다. 이 예시에서는 AR 무기만 포함했습니다.
  Map<String, Map<String, double>> damageCoefficients = {
    'AR 부위별 데미지 계수': {
      '머리': 2.35,
      '목': 2.35,
      '어깨': 1.0,
      '가슴': 1.0,
      '명치': 1.0,
      '명치 상복부': 1.0,
      '명치 하복부': 1.0,
      '팔뚝': 0.9,
      '전완근': 0.9,
      '손': 0.9,
      '허벅지': 0.9,
      '종아리': 0.9,
      '발': 0.9,
    },
    // 다른 총기들의 부위별 데미지 계수를 추가하세요.
  };

  // 각 레벨에 따른 감소율을 정의합니다.
  Map<String, double> armorLevelReduction = {
    '헬멧없음': 0.0,
    '1레벨헬멧': 0.3,
    '2레벨헬멧': 0.4,
    '3레벨헬멧': 0.55,
  };

  Map<String, double> armorLevelReductionArmor = {
    '갑옷없음': 0.0,
    '깨진갑옷': 0.2,
    '1레벨갑옷': 0.3,
    '2레벨갑옷': 0.4,
    '3레벨갑옷': 0.55,
  };

  String getHelmetLevel(int index) {
    switch (index) {
      case 0:
        return '헬멧없음';
      case 1:
        return '1레벨헬멧';
      case 2:
        return '2레벨헬멧';
      case 3:
        return '3레벨헬멧';
      default:
        return '헬멧없음';
    }
  }

  String getArmorLevel(int index) {
    switch (index) {
      case 0:
        return '갑옷없음';
      case 1:
        return '깨진갑옷';
      case 2:
        return '1레벨갑옷';
      case 3:
        return '2레벨갑옷';
      case 4:
        return '3레벨갑옷';
      default:
        return '갑옷없음';
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // 사용자가 무기를 선택할 때 호출되는 메소드
  void onWeaponSelected(String weapon) {
    setState(() {
      selectedWeapon = weapon;
    });
  }

  double calculateDamage(String weapon, String bodyPart,
      int selectedHelmetIndex, int selectedArmorIndex) {
    // 선택된 총기의 기본 데미지를 가져옵니다.
    double baseDamage = baseDamageMap[weapon] ?? 0;

    // 기본 총기 부위별 데미지 계수를 가져옵니다.
    double baseCoefficient = baseWeaponDamageCoefficients[bodyPart] ?? 1;

    // 'AR 부위별 데미지 계수'를 사용하여 총기별 부위별 데미지 계수를 가져옵니다.
    double weaponCoefficient =
        damageCoefficients['AR 부위별 데미지 계수']![bodyPart] ?? 1;

    // 최종 데미지 계산: 기본 데미지 * 기본 계수 * 총기 계수
    double finalBaseDamage = baseDamage * baseCoefficient * weaponCoefficient;

    // 헬멧과 갑옷의 감소율을 적용합니다.
    double helmetReduction = 1.0;
    if (bodyPart == '머리' || bodyPart == '목') {
      String helmetLevelKey =
          getHelmetLevel(selectedHelmetIndex); // 이 함수는 헬멧 인덱스를 감소율 맵의 키로 변환합니다.
      helmetReduction = 1.0 - (armorLevelReduction[helmetLevelKey] ?? 0);
    }

    double armorReduction = 1.0;
    if (['어깨', '가슴', '명치', '명치 상복부', '명치 하복부'].contains(bodyPart)) {
      String armorLevelKey =
          getArmorLevel(selectedArmorIndex); // 이 함수는 갑옷 인덱스를 감소율 맵의 키로 변환합니다.
      armorReduction = 1.0 - (armorLevelReductionArmor[armorLevelKey] ?? 0);
    }

    // 최종 데미지: (기본 데미지 * 기본 계수 * 총기 계수) * 헬멧 감소율 * 갑옷 감소율
    double finalDamage = finalBaseDamage * helmetReduction * armorReduction;

    return finalDamage;
  }

  Widget _buildArmorHelmetSelection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Helmet selection
          for (var i = 0; i < helmetImages.length; i++)
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedHelmet = i;
                  });
                },
                child: Opacity(
                  opacity: _selectedHelmet == i ? 1.0 : 0.5,
                  child: Image.asset(helmetImages[i], width: 50, height: 50),
                ),
              ),
            ),
          SizedBox(
            width: 20.0,
          ),
          // Armor selection
          for (var i = 0; i < armorImages.length; i++)
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedArmor = i;
                  });
                },
                child: Opacity(
                  opacity: _selectedArmor == i ? 1.0 : 0.5,
                  child: Image.asset(armorImages[i], width: 50, height: 50),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    WeaponOption selectedWeaponOption = weaponOptions[0]; // 초기 선택 값 설정
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2AA00),
        title: Text('총기별 데미지 측정'),
        bottom: TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(text: 'AR(어썰트 라이플)'),
            Tab(text: 'DMR(지정사수소총)'),
            Tab(text: 'SR(저격소총)'),
            Tab(text: 'SG(샷건)'),
            Tab(text: 'SMG(기관단총)'),
            Tab(text: 'Melee(근접무기)'),
            Tab(text: 'Pistol(권총)'),
            Tab(text: 'LMG(경기관총)'),
            Tab(text: 'Crossbow(석궁)'),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF2AA00), // 배경색 설정 변경
      body: Container(
        child: Column(
          children: <Widget>[
            _buildArmorHelmetSelection(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Add weapon selection for each category
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<WeaponOption>(
                        value: selectedWeaponOption,
                        onChanged: (WeaponOption? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedWeaponOption = newValue;
                              selectedWeapon = newValue.name; // 선택된 총기 이름 업데이트
                            });
                          }
                        },
                        items: weaponOptions
                            .map<DropdownMenuItem<WeaponOption>>(
                                (WeaponOption option) {
                          return DropdownMenuItem<WeaponOption>(
                            value: option,
                            child: Row(
                              children: [
                                Image.asset(option.imagePath,
                                    width: 70, height: 70), // 총기 이미지
                                SizedBox(width: 8), // 이미지와 텍스트 사이 간격
                                Text(option.name), // 총기 이름 텍스트
                              ],
                            ),
                          );
                        }).toList(),
                      ),

                      // 선택된 값에 따른 데미지 계산 예시
                      Expanded(
                        child: SingleChildScrollView(
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset('asset/img/부위.png'), // 배경 이미지
                              Positioned(
                                top: 5,
                                left: 155,
                                child: Text(
                                  '머리: ${calculateDamage(selectedWeapon, '머리', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: headTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 65,
                                left: 190,
                                child: Text(
                                  '목: ${calculateDamage(selectedWeapon, '목', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: headTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 100,
                                left: 190,
                                child: Text(
                                  '어깨: ${calculateDamage(selectedWeapon, '어깨', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: bodyTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 170,
                                left: 90,
                                right: 10,
                                child: Text(
                                  '가슴: ${calculateDamage(selectedWeapon, '가슴', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: bodyTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 225,
                                left: 90,
                                right: 10,
                                child: Text(
                                  '명치: ${calculateDamage(selectedWeapon, '명치', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: bodyTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 265,
                                left: 75,
                                right: 10,
                                child: Text(
                                  '명치 상복부: ${calculateDamage(selectedWeapon, '명치 상복부', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: bodyTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 290,
                                left: 75,
                                right: 10,
                                child: Text(
                                  '명치 하복부: ${calculateDamage(selectedWeapon, '명치 하복부', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: bodyTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 145,
                                left: 190,
                                child: Text(
                                  '팔뚝: ${calculateDamage(selectedWeapon, '팔뚝', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: armTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 215,
                                left: 220,
                                child: Text(
                                  '전완근: ${calculateDamage(selectedWeapon, '전완근', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: armTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 265,
                                left: 240,
                                child: Text(
                                  '손: ${calculateDamage(selectedWeapon, '손', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: armTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 360,
                                left: 190,
                                child: Text(
                                  '허벅지: ${calculateDamage(selectedWeapon, '허벅지', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: legTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 440,
                                left: 190,
                                child: Text(
                                  '종아리: ${calculateDamage(selectedWeapon, '종아리', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: legTextStyle,
                                ),
                              ),
                              Positioned(
                                top: 530,
                                left: 190,
                                child: Text(
                                  '발: ${calculateDamage(selectedWeapon, '발', _selectedHelmet, _selectedArmor).toStringAsFixed(2)}',
                                  style: legTextStyle,
                                ),
                              ),
                            ],
                            // 다른 부위에 대한 `Positioned` 위젯 추가...
                          ),
                        ),
                      )
                    ],
                  ),
                  Center(child: Text('DMR Weapons')),
                  Center(child: Text('SR Weapons')),
                  Center(child: Text('SG Weapons')),
                  Center(child: Text('SMG Weapons')),
                  Center(child: Text('Melee Weapons')),
                  Center(child: Text('Pistol Weapons')),
                  Center(child: Text('LMG Weapons')),
                  Center(child: Text('Crossbow Weapons')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
