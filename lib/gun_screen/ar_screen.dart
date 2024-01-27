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
    final List<Map<String, dynamic>> gunList = [
      {
        'type' : 'ar',
        'name': 'M16A4',
        'ammunition' : '5.56mm',
        'ammunition_image' : 'asset/img/5탄.png',
        'image': 'asset/img/m16a4.png',
        'magazine': '30',
        'shotmode': '단발/3점사',
        'damage': '43',
        'muzzleVelocity': '900m/s',
        'stoppingPower': '8000',
        'ttk': '0.3s',
        'dps': '573',
        'reloadTime': '2.2s',
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
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/개머리판.png',
          'asset/img/중량개머리판.png',
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
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '전술 개머리판',
          '중량형 개머리판(SMG,AR,M249)'
        ],
      },
      {
        'type' : 'ar',
        'name': 'M416',
        'image': 'asset/img/m416.png',
        'ammunition' : '5.56mm',
        'ammunition_image' : 'asset/img/5탄.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '40',
        'muzzleVelocity': '880m/s',
        'stoppingPower': '3500',
        'ttk': '0.428s',
        'dps': '466.67',
        'reloadTime': '3.2s',
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
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/개머리판.png',
          'asset/img/중량개머리판.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',
          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
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
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '전술 개머리판',
          '중량형 개머리판(SMG,AR,M249)',
              '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
      },
      {
        'type' : 'ar',
        'name': 'SCAR-L',
        'image': 'asset/img/scar-l.png',
        'ammunition' : '5.56mm',
        'ammunition_image' : 'asset/img/5탄.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '42',
        'muzzleVelocity': '870m/s',
        'stoppingPower': '9000',
        'ttk': '0.48s',
        'dps': '437.5',
        'reloadTime': '3.2s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/개머리판.png',
          'asset/img/중량개머리판.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',
          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
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
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '전술 개머리판',
          '중량형 개머리판(SMG,AR,M249)',
          '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
      },
      {
        'type' : 'ar',
        'name': 'G36C',
        'image': 'asset/img/g36c.png',
        'ammunition' : '5.56mm',
        'ammunition_image' : 'asset/img/5탄.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '41',
        'muzzleVelocity': '870m/s',
        'stoppingPower': '-',
        'ttk': '0.428s',
        'dps': '478.4',
        'reloadTime': '3.4s',
        'spawnArea': '비켄디, 카라킨, 헤이븐, 데스턴',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',

          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
              '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
      },
      {
        'type' : 'ar',
        'name': 'QBZ95',
        'image': 'asset/img/qbz95.png',
        'ammunition' : '5.56mm',
        'ammunition_image' : 'asset/img/5탄.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '42',
        'muzzleVelocity': '930m/s',
        'stoppingPower': '9000',
        'ttk': '0.462s',
        'dps': '455',
        'reloadTime': '3.3s',
        'spawnArea': '사녹, 론도, 태이고',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',

          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
              '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
      },
      {
        'type' : 'ar',
        'name': 'K2',
        'image': 'asset/img/k2.png',
        'ammunition' : '5.56mm',
        'ammunition_image' : 'asset/img/5탄.png',
        'magazine': '30',
        'shotmode': '단발/연사/점사',
        'damage': '41',
        'muzzleVelocity': '880m/s',
        'stoppingPower': '6000',
        'ttk': '0.428s',
        'dps': '478.4',
        'reloadTime': '3.2s',
        'spawnArea': '태이고',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
        ],
      },
      {
        'name': 'AUG A3',
        'image': 'asset/img/aug_a3.png',
        'ammunition' : '5.56mm',
        'ammunition_image' : 'asset/img/5탄.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '41',
        'muzzleVelocity': '890m/s',
        'stoppingPower': '9000',
        'ttk': '0.425s',
        'dps': '492',
        'reloadTime': '3.6666s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',
          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
      },
      {
        'type' : 'ar',
        'name': 'FAMAS',
        'image': 'asset/img/famas_g2.png',
        'ammunition' : '5.56mm',
        'ammunition_image' : 'asset/img/5탄.png',
        'magazine': '30',
        'shotmode': '단발/연사/점사',
        'damage': '39',
        'muzzleVelocity': '925m/s',
        'stoppingPower': '-',
        'ttk': '0.333s',
        'dps': '585',
        'reloadTime': '3.6s',
        'spawnArea': '보급 무기',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
        ],
      },
      {
        'type' : 'ar',
        'name': 'AKM',
        'image': 'asset/img/akm.png',
        'ammunition' : '7.62mm',
        'ammunition_image' : 'asset/img/7탄.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '47',
        'muzzleVelocity': '715m/s',
        'stoppingPower': '10000',
        'ttk': '0.4s',
        'dps': '470',
        'reloadTime': '3.22s',
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
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
        ],
      },
      {
        'type' : 'ar',
        'name': 'Beryl M762',
        'image': 'asset/img/beryl_m762.png',
        'ammunition' : '7.62mm',
        'ammunition_image' : 'asset/img/7탄.png',
        'magazine': '30',
        'shotmode': '단발/연사/점사',
        'damage': '44',
        'muzzleVelocity': '749m/s',
        'stoppingPower': '10000',
        'ttk': '0.42s',
        'dps': '513.3',
        'reloadTime': '3.1s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',
          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
      },
      {
        'type' : 'ar',
        'name': 'MK47 Mutant',
        'image': 'asset/img/mk47_mutant.png',
        'ammunition' : '7.62mm',
        'ammunition_image' : 'asset/img/7탄.png',
        'magazine': '20',
        'shotmode': '단발/2점사',
        'damage': '49',
        'muzzleVelocity': '780m/s',
        'stoppingPower': '10000',
        'ttk': '0.3',
        'dps': '653.3',
        'reloadTime': '3.35s',
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
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/개머리판.png',
          'asset/img/중량개머리판.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',
          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
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
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '전술 개머리판',
          '중량형 개머리판(SMG,AR,M249)',
              '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
      },
      {
        'type' : 'ar',
        'name': '그로자',
        'image': 'asset/img/groza.png',
        'ammunition' : '7.62mm',
        'ammunition_image' : 'asset/img/7탄.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '47',
        'muzzleVelocity': '715m/s',
        'stoppingPower': '10000',
        'ttk': '0.32s',
        'dps': '587.5',
        'reloadTime': '3s',
        'spawnArea': '보급 무기',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
        ],
      },
      {
        'type' : 'ar',
        'name': 'ACE32',
        'image': 'asset/img/ace32.png',
        'ammunition' : '7.62mm',
        'ammunition_image' : 'asset/img/7탄.png',
        'magazine': '30',
        'shotmode': '단발/연사',
        'damage': '43',
        'muzzleVelocity': '720m/s',
        'stoppingPower': '-',
        'ttk': '0.44s',
        'dps': '487.3',
        'reloadTime': '3s',
        'spawnArea': '모든맵',
        'attachments': [
          'asset/img/레드도트.png',
          'asset/img/홀로그램.png',
          'asset/img/2배율.png',
          'asset/img/3배율.png',
          'asset/img/4배율.png',
          'asset/img/6배율.png',
          'asset/img/캔티드.png',
          'asset/img/열화상4배율.png',
          'asset/img/ar소음기.png',
          'asset/img/ar소염기.png',
          'asset/img/ar보정기.png',
          'asset/img/ar퀴드로우.png',
          'asset/img/ar대탄.png',
          'asset/img/ar대퀵.png',
          'asset/img/개머리판.png',
          'asset/img/중량개머리판.png',
          'asset/img/앵글.png',
          'asset/img/수직.png',
          'asset/img/하프.png',
          'asset/img/라이트.png',
          'asset/img/엄지.png',
          'asset/img/레이저사이트.png',
        ],
        'attachments_name': [
          '레드 도트 사이트',
          '홀로그램 조준기',
          '2배율 스코프',
          '3배율 스코프',
          '4배율 스코프',
          '6배율 스코프',
          '캔티드 사이트',
          '4배율 열화상 스코프',
          '소음기(AR,DMR,S12K)',
          '소염기(AR,DMR,S12K)',
          '보정기(AR,DMR,S12K)',
          '퀵드로우 탄창(AR,DMR,S12K)',
          '대용량 탄창(AR,DMR,S12K)',
          '대용량 퀵드로우 탄창(AR,DMR,S12K)',
          '전술 개머리판',
          '중량형 개머리판(SMG,AR,M249)',
          '앵글 손잡이',
          '수직 손잡이',
          '하프 그립',
          '라이트 그립',
          '엄지 그립',
          '레이저 사이트'
        ],
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
