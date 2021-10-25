import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Подробнее'),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                              'Сегодня мы обновили наше меню оцените новинки нашего ресторана\n',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        
                        TextSpan(
                          text: 'Об Ресторане:\n',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                            text:
                                'Попробуйте наш усовершенствованное меню : Новые салаты, горячие закуски , и так же комплименты от Шеф-повара\n  ')
                      ]))
                ],
              ))
        ]));
  }
}
