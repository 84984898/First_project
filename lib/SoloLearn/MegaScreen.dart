import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/router/routing_const.dart';

class MEGAScreen extends StatelessWidget {
  const MEGAScreen({Key? key}) : super(key: key);

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
                'http://samatshow.kz/wp-content/uploads/photo-gallery/mega_park/review/001-mega-park.jpg'),
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
                  text: 'Успейте по участвовать в Розыгрыше  "MEGA 1+1"  ',
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
            Navigator.pushNamed(context, FourRoute);
          },
          child: Text(
            "Подробнее",
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.indigo,
            ),
          )),
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
            Image.asset('assets/icons/foo.png'),
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
              Image.asset('assets/icons/Vector.png'),
              SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Сейфуллина , 483',
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
          height: 100,
          width: 400,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.red,
                Colors.amber.shade900,
                Colors.yellow,
                Colors.green,
              ]),
              borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/ru/6/66/MEGA-logo.png'))
            ],
          )),
      CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pushNamed(context, StarbucksRoute);
          },
          child: Container(
              height: 105,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green.shade200,
                    Colors.green.shade800,
                  ]),
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Image(
                      image: NetworkImage(
                          'http://pngimg.com/uploads/starbucks/starbucks_PNG7.png'))
                ],
              ))),
      CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pushNamed(context, KfcRoute);
          },
          child: Container(
              width: 400,
              height: 126,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.red,
                    Colors.red.shade500,
                  ]),
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Image(
                      image: NetworkImage(
                          'https://www.freepnglogos.com/uploads/kfc-png-logo/magazine-kfc-png-logo-2.png'))
                ],
              ))),
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.pushNamed(context, MCRoute);
        },
        child: Container(
            height: 170,
            width: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.green.shade300,
                ]),
                borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/MC.png',
                  height: 152,
                )
              ],
            )),

      )
      
    ]));
  }
}
