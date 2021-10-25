import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/router/routing_const.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 240,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://pbs.twimg.com/media/DwpGVtZW0AI0Zqx.jpg'),
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
                        'Cамые лучшие кинотеатры только у нас посетите наш новый зал "Comfort"',
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
            Navigator.pushNamed(context, ThreeRoute);
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
                      text: 'Работаем с 10:00 до 22:00',
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
                      text: 'Сейфуллина, 617 ',
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
          height: 1,
          color: Color(0x9FA0A0A0),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Image(
                image: AssetImage('assets/icons/Forum.png'),
                height: 200,
                width: 350,
              )
            ]))
      ],
    ));
  }
}
