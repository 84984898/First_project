import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KfcScreen extends StatelessWidget {
  const KfcScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('KFC'),
        ),
        child: SafeArea(
            child: ListView(children: [
          Container(
              height: 820,
              width: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.red.shade800,
                    Colors.amber,
                  ]),
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Wrap(children: [
                Container(
                  height: 5,
                  color: Color(0xF80C0C0C),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                ),
                Image(
                  image: AssetImage('assets/icons/Kfc.png'),
                  height: 130,
                ),
                SizedBox(
                  width: 5,
                ),
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                      TextSpan(
                          text: 'MЕНЮ\n',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'Комбо Стейк Хаус-1850 тг\n',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      TextSpan(text: ('Гамбургер - 1 шт\n')),
                      TextSpan(text: ('Нагетсы - 2 шт\n')),
                      TextSpan(text: ('Фри - 1 порция\n')),
                      TextSpan(text: ('Стрицепсы - 10 шт\n')),
                      TextSpan(text: ('Кока Кола - 1 шт'))
                    ])),
                Container(
                  height: 5,
                  color: Color(0xF80C0C0C),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                ),
                Image(
                  image: AssetImage('assets/icons/Bucket.png'),
                  height: 130,
                ),
                SizedBox(
                  width: 5,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Комбо Баскет-3000 тг\n\n',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Нагетсы - 20 шт\n'),
                      TextSpan(text: 'Фри - 2 порции \n'),
                      TextSpan(text: 'Пепси - 2 шт\n'),
                    ],
                  ),
                ),
                Container(
                  height: 5,
                  color: Color(0xF80C0C0C),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                ),
                Image(
                  image: AssetImage('assets/icons/burger.png'),
                  height: 125,
                ),
                SizedBox(
                  width: 5,
                ),
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                      TextSpan(
                          text: 'Комбо Шеф бургер-1900 тг\n',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Бургер - 1 шт\n'),
                      TextSpan(text: 'Нагетсы - 10 шт\n'),
                      TextSpan(text: 'Фри - 1 порция\n'),
                      TextSpan(text: 'Шоколадное печения - 1 шт\n'),
                      TextSpan(text: 'Пепси - 1 шт\n')
                    ])),
                Container(
                  height: 5,
                  color: Color(0xF80C0C0C),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                ),
                Image(
                  image: NetworkImage(
                      'http://pngimg.com/uploads/kfc_food/kfc_food_PNG60.png'),
                  height: 130,
                ),
                SizedBox(
                  height: 5,
                ),
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                      TextSpan(
                          text: 'Мега бокс-1500 тг\n',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Нагетсы - 3 шт\n'),
                      TextSpan(text: 'Фри - 1 порция\n'),
                      TextSpan(text: 'Пепси - 1 шт\n'),
                      TextSpan(text: 'Мороженое - 1 шт\n'),
                    ])),
                Container(
                  height: 5,
                  color: Color(0xF80C0C0C),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                ),
                Image(
                  image: AssetImage('assets/icons/call.png'),
                  height: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                      TextSpan(
                          text: '8 (727) 334 1156',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w700)),
                    ])),
                Image(image: AssetImage('assets/icons/boom.png')),
              ]))
        ])));
  }
}
