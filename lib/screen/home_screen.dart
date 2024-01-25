import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
//#F2AA00
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w700,

    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2AA00),
        appBar: AppBar(
          title:
          Text('PUBG 총기 정보 알려드림',
              style: textStyle.copyWith(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text('AR - 돌격소총',
                    style: textStyle,)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ElevatedButton(onPressed: (){},
                    child: Text('AR - 돌격소총',
                        style: textStyle)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ElevatedButton(onPressed: (){},
                    child: Text('AR - 돌격소총',
                        style: textStyle)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ElevatedButton(onPressed: (){},
                    child: Text('AR - 돌격소총',
                        style: textStyle)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ElevatedButton(onPressed: (){},
                    child: Text('AR - 돌격소총',
                        style: textStyle)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ElevatedButton(onPressed: (){},
                    child: Text('AR - 돌격소총',
                        style: textStyle)),
              ),
            ],

          ),
        ),

      ),
    );
  }
}
