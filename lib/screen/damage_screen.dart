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
  int _selectedHelmet = 0;
  int _selectedArmor = 0;
  String selectedWeapon = 'M416';
  Map<String, WeaponOption> selectedWeaponOptions = {};
  Map<String, WeaponOption> lastSelectedOptions = {};
  TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,

  );
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
  List<WeaponOption> dmrOptions = [
    WeaponOption('Mini14', 'asset/img/미니.png'),
    WeaponOption('QBU88', 'asset/img/qbu.png'),
    WeaponOption('Mk12', 'asset/img/mk12.png'),
    WeaponOption('SKS', 'asset/img/sks.png'),
    WeaponOption('SLR', 'asset/img/slr.png'),
    WeaponOption('VSS', 'asset/img/vss.png'),
    WeaponOption('드라구노프', 'asset/img/드라구노프.png'),
    WeaponOption('Mk14', 'asset/img/mk14.png'),
  ];
  List<WeaponOption> srOptions = [
    WeaponOption('Kar98k', 'asset/img/카구팔.png'),
    WeaponOption('모신나강', 'asset/img/모신나강.png'),
    WeaponOption('M24', 'asset/img/m24.png'),
    WeaponOption('AWM', 'asset/img/awm.png'),
    WeaponOption('Win94', 'asset/img/win94.png'),
    WeaponOption('링스 AMR', 'asset/img/링스.png'),
  ];
  List<WeaponOption> sgOptions = [
    WeaponOption('S12K', 'asset/img/s12k.png'),
    WeaponOption('S1897', 'asset/img/펌샷.png'),
    WeaponOption('S686', 'asset/img/덥배.png'),
    WeaponOption('DBS', 'asset/img/dbs.png'),
    WeaponOption('소드 오프', 'asset/img/소드오프.png'),
    WeaponOption('O12', 'asset/img/o12.png'),
  ];

  List<WeaponOption> smgOptions = [
    WeaponOption('토미건', 'asset/img/토미건.png'),
    WeaponOption('UMP45', 'asset/img/움프.png'),
    WeaponOption('Micro UZI', 'asset/img/우지.png'),
    WeaponOption('Vector', 'asset/img/백터.png'),
    WeaponOption('PP-19 Bizon', 'asset/img/비존.png'),
    WeaponOption('MP5K', 'asset/img/mp5.png'),
    WeaponOption('MP9', 'asset/img/mp9.png'),
    WeaponOption('P90', 'asset/img/p90.png'),
    WeaponOption('JS9', 'asset/img/js9.png'),
  ];
  List<WeaponOption> meleeOptions = [
    WeaponOption('쇠지렛대', 'asset/img/쇠지렛대.png'),
    WeaponOption('마체테', 'asset/img/마체테.png'),
    WeaponOption('프라이팬', 'asset/img/프라이팬.png'),
    WeaponOption('낫', 'asset/img/낫.png'),
  ];
  List<WeaponOption> pistolOptions = [
    WeaponOption('P18C', 'asset/img/p18c.png'),
    WeaponOption('P92', 'asset/img/p92.png'),
    WeaponOption('Skorpion', 'asset/img/스콜피온.png'),
    WeaponOption('P1911', 'asset/img/p1911.png'),
    WeaponOption('R45', 'asset/img/r45.png'),
    WeaponOption('Deagle', 'asset/img/deagle.png'),
    WeaponOption('R1895', 'asset/img/r1895.png'),
  ];
  List<WeaponOption> lmgOptions = [
    WeaponOption('M249', 'asset/img/m249.png'),
    WeaponOption('DP-28', 'asset/img/dp28.png'),
    WeaponOption('MG3', 'asset/img/mg3.png'),
  ];
  List<WeaponOption> crossbowOptions = [
    WeaponOption('석궁', 'asset/img/석궁.png'),
  ];

  List<String> arList = [
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

  List<String> dmrList = [
    'Mini14',
    'QBU88',
    'Mk12',
    'SKS',
    'SLR',
    'Mk14',
    'VSS',
    '드라구노프',
  ];
  List<String> srList = [
    'Kar98k',
    '모신나강',
    'M24',
    'AWM',
    'Win94',
    '링스 AMR',
  ];

  List<String> sgList = ['S12K', 'S1897', 'S686', 'DBS', '소드 오프', 'O12'];

  List<String> smgList = [
    '토미건',
    'UMP45',
    'Micro UZI',
    'Vector',
    'PP-19 Bizon',
    'MP5K',
    'MP9',
    'P90',
    'JS9'
  ];
  List<String> meleeList = ['쇠지렛대', '마체테', '프라이팬', '낫'];
  List<String> pistolList = [
    'P18C',
    'P92',
    'Skorpion',
    'P1911',
    'R45',
    'Deagle',
    'R1895'
  ];
  List<String> lmgList = ['M249', 'DP-28', 'MG3'];
  List<String> crossbowList = ['석궁'];

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
  final List<String> dmrWeapons = [
    'Mini14',
    'QBU88',
    'Mk12',
    'SKS',
    'SLR',
    'Mk14',
    'VSS',
    '드라구노프',
  ];
  final List<String> srWeapons = [
    'Kar98k',
    '모신나강',
    'M24',
    'AWM',
    'Win94',
    '링스 AMR',
  ];
  final List<String> sgWeapons = [
    'S12K',
    'S1897',
    'S686',
    'DBS',
    '소드 오프',
    'O12'
  ];
  final List<String> smgWeapons = [ '토미건',
    'UMP45',
    'Micro UZI',
    'Vector',
    'PP-19 Bizon',
    'MP5K',
    'MP9',
    'P90',
    'JS9'];
  final List<String> meleeWeapons = [ '쇠지렛대',
    '마체테',
    '프라이팬',
    '낫'];
  final List<String> pistolWeapons = [ 'P18C',
    'P92',
    'Skorpion',
    'P1911',
    'R45',
    'Deagle',
    'R1895'];
  final List<String> lmgWeapons = [  'M249',
    'DP-28',
    'MG3'];
  final List<String> crossbowWeapons = [    '석궁'
  ];
  Map<String, double> baseDamageMap = {
    //AR
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
    //DMR
    'Mini14': 48.0,
    'QBU88': 48.0,
    'Mk12': 50.0,
    'SKS': 53.0,
    'SLR': 56.0,
    'Mk14': 61.0,
    'VSS': 43.0,
    '드라구노프': 60.0,
    //SR
    'Kar98k': 79.0,
    '모신나강': 79.0,
    'M24': 75.0,
    'AWM': 105.0,
    'Win94': 66.0,
    '링스 AMR': 118.0,
    //SG
    'S12K': 216.0,
    'S1897': 234.0,
    'S686': 234.0,
    'DBS': 234.0,
    '소드 오프': 189.0,
    'O12': 100.0,
    //SMG
    '토미건': 40.0,
    'UMP45': 41.0,
    'Micro UZI': 26.0,
    'Vector': 31.0,
    'PP-19 Bizon': 36.0,
    'MP5K': 33.0,
    'MP9': 31.0,
    'P90': 35.0,
    'JS9': 34.0,
    //Melee
    '쇠지렛대': 60.0,
    '마체테': 60.0,
    '프라이팬': 80.0,
    '낫': 60.0,
    //Pistol
    'P18C': 23.0,
    'P92': 34.0,
    'Skorpion': 22.0,
    'P1911': 42.0,
    'R45': 65.0,
    'Deagle': 62.0,
    'R1895': 64.0,
    //LMG
    'M249': 41.0,
    'DP-28': 52.0,
    'MG3': 42.0,
    //Crossbow
    '석궁': 105,
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
    'DMR 부위별 데미지 계수': {
      '머리': 2.35,
      '목': 2.35,
      '어깨': 1.05,
      '가슴': 1.05,
      '명치': 1.05,
      '명치 상복부': 1.05,
      '명치 하복부': 1.05,
      '팔뚝': 0.95,
      '전완근': 0.95,
      '손': 0.95,
      '허벅지': 0.95,
      '종아리': 0.95,
      '발': 0.95,
    },
    'SR 부위별 데미지 계수': {
      '머리': 2.5,
      '목': 2.5,
      '어깨': 1.3,
      '가슴': 1.3,
      '명치': 1.3,
      '명치 상복부': 1.3,
      '명치 하복부': 1.3,
      '팔뚝': 0.95,
      '전완근': 0.95,
      '손': 0.95,
      '허벅지': 0.95,
      '종아리': 0.95,
      '발': 0.95,
    },
    'SG 부위별 데미지 계수': {
      '머리': 1.5,
      '목': 1.5,
      '어깨': 0.9,
      '가슴': 0.9,
      '명치': 0.9,
      '명치 상복부': 0.9,
      '명치 하복부': 0.9,
      '팔뚝': 1.05,
      '전완근': 1.05,
      '손': 1.05,
      '허벅지': 1.05,
      '종아리': 1.05,
      '발': 1.05,
    },
    'SMG 부위별 데미지 계수': {
      '머리': 2.1,
      '목': 2.1,
      '어깨': 1.05,
      '가슴': 1.05,
      '명치': 1.05,
      '명치 상복부': 1.05,
      '명치 하복부': 1.05,
      '팔뚝': 1.3,
      '전완근': 1.3,
      '손': 1.3,
      '허벅지': 1.3,
      '종아리': 1.3,
      '발': 1.3,
    },
    'Melee 부위별 데미지 계수': {
      '머리': 1.5,
      '목': 1.5,
      '어깨': 1.0,
      '가슴': 1.0,
      '명치': 1.0,
      '명치 상복부': 1.0,
      '명치 하복부': 1.0,
      '팔뚝': 1.2,
      '전완근': 1.2,
      '손': 1.2,
      '허벅지': 1.2,
      '종아리': 1.2,
      '발': 1.2,
    },
    'Pistol 부위별 데미지 계수': {
      '머리': 2.1,
      '목': 2.1,
      '어깨': 1.0,
      '가슴': 1.0,
      '명치': 1.0,
      '명치 상복부': 1.0,
      '명치 하복부': 1.0,
      '팔뚝': 1.05,
      '전완근': 1.05,
      '손': 1.05,
      '허벅지': 1.05,
      '종아리': 1.05,
      '발': 1.05,
    },
    'LMG 부위별 데미지 계수': {
      '머리': 2.3,
      '목': 2.3,
      '어깨': 1.05,
      '가슴': 1.05,
      '명치': 1.05,
      '명치 상복부': 1.05,
      '명치 하복부': 1.0,
      '팔뚝': 0.9,
      '전완근': 0.9,
      '손': 0.9,
      '허벅지': 0.9,
      '종아리': 0.9,
      '발': 0.9,
    },
    'Crossbow 부위별 데미지 계수': {
      '머리': 2.3,
      '목': 2.3,
      '어깨': 1.4,
      '가슴': 1.4,
      '명치': 1.4,
      '명치 상복부': 1.4,
      '명치 하복부': 1.4,
      '팔뚝': 1.2,
      '전완근': 1.2,
      '손': 1.2,
      '허벅지': 1.2,
      '종아리': 1.2,
      '발': 1.2,
    },
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

  late WeaponOption selectedWeaponOption;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);

    // 탭 변경 시 호출될 리스너를 추가합니다.
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          // 현재 탭 인덱스에 따라 적절한 총기 옵션 리스트를 선택합니다.
          List<WeaponOption> currentOptions = getCurrentOptions(_tabController.index);
          // 현재 탭의 첫 번째 총기를 기본값으로 설정합니다.
          selectedWeaponOption = currentOptions.first;
          // 선택된 총기 이름을 업데이트합니다.
          selectedWeapon = selectedWeaponOption.name;
        });
      }
    });

    // 초기 선택된 총기 옵션을 설정합니다.
    selectedWeaponOption = weaponOptions.first;
  }

// 현재 탭 인덱스에 따라 적절한 총기 옵션 리스트를 반환하는 함수입니다.
  List<WeaponOption> getCurrentOptions(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return weaponOptions;
      case 1:
        return dmrOptions;
      case 2:
        return srOptions;
      case 3:
        return sgOptions;
      case 4:
        return smgOptions;
      case 5:
        return meleeOptions;
      case 6:
        return pistolOptions;
      case 7:
        return lmgOptions;
      case 8:
        return crossbowOptions;
      default:
        return [];
    }
  }


  @override
  void dispose() {
    _tabController.removeListener(() {}); // 리스너 제거
    _tabController.dispose();
    super.dispose();
  }

  // 사용자가 무기를 선택할 때 호출되는 메소드
  void onWeaponSelected(String weapon) {
    setState(() {
      selectedWeapon = weapon;
    });
  }

  double calculateDamage(String selectedWeapon, String bodyPart, int selectedHelmetIndex, int selectedArmorIndex) {
    double baseDamage = baseDamageMap[selectedWeapon] ?? 0;
    String weaponType = getWeaponType(selectedWeapon);
    Map<String, double>? weaponCoefficients = damageCoefficients["$weaponType 부위별 데미지 계수"];

    double baseCoefficient = baseWeaponDamageCoefficients[bodyPart] ?? 1.0;
    double weaponCoefficient = weaponCoefficients?[bodyPart] ?? 1.0;
    if (selectedWeapon == '드라구노프' && bodyPart == '머리') {
      weaponCoefficient = 2.8;
    }

    double finalBaseDamage = baseDamage * baseCoefficient * weaponCoefficient;



      double helmetReduction = 1.0;
    if (bodyPart == '머리' || bodyPart == '목') {
      String helmetLevelKey = getHelmetLevel(selectedHelmetIndex);
      helmetReduction = 1.0 - (armorLevelReduction[helmetLevelKey] ?? 0);
    }

    double armorReduction = 1.0;
    if (['어깨', '가슴', '명치', '명치 상복부', '명치 하복부'].contains(bodyPart)) {
      String armorLevelKey = getArmorLevel(selectedArmorIndex);
      armorReduction = 1.0 - (armorLevelReductionArmor[armorLevelKey] ?? 0);
    }

    double finalDamage = finalBaseDamage * helmetReduction * armorReduction;
    return finalDamage;
  }


// 총기 이름으로부터 총기 유형을 결정하는 함수입니다.
  String getWeaponType(String weaponName) {
    if (arWeapons.contains(weaponName)) {
      return 'AR';
    } else if (dmrWeapons.contains(weaponName)) {
      return 'DMR';
    } else if (srWeapons.contains(weaponName)) {
      return 'SR';
    } else if (sgWeapons.contains(weaponName)) {
      return 'SG';
    } else if (smgWeapons.contains(weaponName)) {
      return 'SMG';
    } else if (meleeWeapons.contains(weaponName)) {
      return 'Melee';
    } else if (pistolWeapons.contains(weaponName)) {
      return 'Pistol';
    } else if (lmgWeapons.contains(weaponName)) {
      return 'LMG';
    } else if (crossbowWeapons.contains(weaponName)) {
      return 'Crossbow';
    }

    return 'Unknown'; // 기본값 혹은 예외 처리
  }

  Widget _buildArmorHelmetSelection() {
    return Container(
      color: Color(0xFFF2AA00),

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      // 배경색 설정 변경
        title: Text('총기별 데미지 측정',style: textStyle,),
        bottom: TabBar(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(text: 'AR(돌격 소총)'),
            Tab(text: 'DMR(지정사수소총)'),
            Tab(text: 'SR(저격소총)'),
            Tab(text: 'SG(샷건)'),
            Tab(text: 'SMG(기관단총)'),
            Tab(text: 'Melee(근접무기)'),
            Tab(text: 'Pistol(권총)'),
            Tab(text: 'LMG(경기관총)'),
            Tab(text: 'Crossbow(석궁)'),
            // 다른 탭들 추가
          ],
        ),
      ),
      body: TabBarView(

        controller: _tabController,
        children: [
          buildWeaponSelection('AR'),
          buildWeaponSelection('DMR'),
          buildWeaponSelection('SR'),
          buildWeaponSelection('SG'),
          buildWeaponSelection('SMG'),
          buildWeaponSelection('Melee'),
          buildWeaponSelection('Pistol'),
          buildWeaponSelection('LMG'),
          buildWeaponSelection('Crossbow'),
        ],
      ),
    );
  }

  // 여기에 총기 선택 및 부위별 데미지 계산을 위한 UI 위젯을 구성하는 함수들을 추가합니다.
  Widget buildWeaponSelection(String weaponType) {
    List<WeaponOption> options;
    switch (weaponType) {
      case 'AR':
        options = weaponOptions;
        break;
      case 'DMR':
        options = dmrOptions;
        break;
      case 'SR':
        options = srOptions;
        break;
      case 'SG':
        options = sgOptions;
        break;
      case 'SMG':
        options = smgOptions;
        break;
      case 'Melee':
        options = meleeOptions;
        break;
      case 'Pistol':
        options = pistolOptions;
        break;
      case 'LMG':
        options = lmgOptions;
      case 'Crossbow':
        options = crossbowOptions;
        break;
      default:
        options = [];
    }
    // 현재 탭에 대한 선택된 무기 옵션을 가져옵니다.
    WeaponOption? currentSelectedOption = selectedWeaponOptions[weaponType];

    // 해당 탭에 아직 선택된 무기 옵션이 없다면, 기본값을 설정합니다.
    if (currentSelectedOption == null && options.isNotEmpty) {
      currentSelectedOption = options.first;
      selectedWeaponOptions[weaponType] = currentSelectedOption;
    }

    return Container(
      color: Color(0xFFF2AA00),
      child: Column(
        children: [
          _buildArmorHelmetSelection(),
          DropdownButton<WeaponOption>(
            value: currentSelectedOption,
            onChanged: (WeaponOption? newValue) {
              setState(() {
                selectedWeaponOptions[weaponType] = newValue!;
                selectedWeapon = newValue.name;
                lastSelectedOptions[weaponType] = newValue;

              });
            },
            items: options.map<DropdownMenuItem<WeaponOption>>((WeaponOption option) {
              return DropdownMenuItem<WeaponOption>(
                value: option,
                child: Row(
                  children: <Widget>[
                    Image.asset(option.imagePath, width: 50, height: 50),
                    SizedBox(width: 10),
                    Text(option.name),
                  ],
                ),
              );
            }).toList(),
          ),

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
    );
  }
}
