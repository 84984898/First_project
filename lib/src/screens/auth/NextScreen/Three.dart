import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Подробнее'),
        ),
        child: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.grey.shade100,
                ]),
                borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            'В этом месяце вы можете посетить наш новый зал "Comfort"\n ',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Об Кинотеатре:\n',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(
                          text:
                              'Зал Comfort это очень уютный зал с итальяскими креслами от фирмы "Abitant".Здесь очень мягкая и приятная  музыка Колонок,тут вы можете взять теплый плед и Powerbank')
                    ],
                  ),
                )
              ],
            ),
          )
        ])));
  }
}
