import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/router/routing_const.dart';

class TowerScreen extends StatelessWidget {
  const TowerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: ListView(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 240,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://avatars.mds.yandex.net/get-altay/2752367/2a0000017042eececa4ee264f9f311a49056/XXXL'),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
        child: Center(
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                  text: 'Описание\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                  text:
                      'Новый способ обжарки хачапури только у нас.И вкуснейшие салатики малибу и ...',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ],
            ),
            overflow: TextOverflow.fade,
          ),
        ),
      ),
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.pushNamed(context, OneRoute);
        },
        child: Text(
          "Подробнее",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.indigo,
          ),
        ),
      ),
      Container(
        height: 1,
        color: Color(0x9FA0A0A0),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Image(image: AssetImage('assets/icons/foo.png')),
            SizedBox(
              width: 10,
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Работаем с 10:00 до 20:00',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image(image: AssetImage('assets/icons/Vector.png')),
              SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Аль- Фараби, 77/8',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
      Container(
        height: 1,
        color: Color(0x9FA0A0A0),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
      ),
      Container(
          height: 60,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.grey,
                Colors.grey.shade300,
              ]),
              borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Image(image: AssetImage('assets/icons/gucci-logo-49110.png'))
            ],
          )),
      Container(
          height: 70,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.grey.shade200,
                Colors.grey,
              ]),
              borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      'https://logodownload.org/wp-content/uploads/2020/04/bulgari-logo-4.png'))
            ],
          )),
      Container(
          height: 110,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.grey.shade800,
                Colors.grey.shade300,
              ]),
              borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Image(image: AssetImage('assets/icons/pngwing.com.png'))
            ],
          )),
    ]));
  }
}
