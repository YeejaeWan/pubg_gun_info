import 'package:flutter/material.dart';

class DamageScreen extends StatefulWidget {
  @override
  _DamageScreenState createState() => _DamageScreenState();
}

class _DamageScreenState extends State<DamageScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedHelmet = 0;
  int _selectedArmor = 0;
  // 이미지 경로들을 추가하세요.
  final List<String> helmetImages = [
    'asset/img/1레벨헬멧.png',
    'asset/img/1레벨헬멧.png',
    'asset/img/2레벨헬멧.png',
    'asset/img/3레벨헬멧.png',
  ];
  final List<String> armorImages = [
    'asset/img/1레벨갑옷.png',
    'asset/img/1레벨갑옷.png',
    'asset/img/2레벨갑옷.png',
    'asset/img/3레벨갑옷.png',
  ];

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

  Widget _buildArmorHelmetSelection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Helmet selection
          for (var i = 0; i < helmetImages.length; i++)
            InkWell(
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
        backgroundColor: Color(0xFFF2AA00),
        title: Text('총기별 데미지 측정'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(text: 'AR(어썰트 라이프)'),
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
                  Center(child: Text('AR Weapons')),
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
            // Display the selected weapon and armor details
            // Add damage calculation and display
          ],
        ),
      ),
    );
  }
}
