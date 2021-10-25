import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarbucksScreen extends StatelessWidget {
  const StarbucksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('STARBUCKS'),
        ),
        child: SafeArea(
            child: ListView(children: [
          Container(
              height: 858,
              width: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.amber,
                    Colors.brown,
                  ]),
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/icons/coffee.png'),
                    height: 240,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                        TextSpan(
                          text: 'MЕНЮ\n\n',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Экспрессо - 650 тг\n',
                          style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Американо - 850 тг\n',
                          style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Капучино - 900 тг\n',
                          style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Латте - 950 тг\n',
                          style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Мокка - 1050 тг\n',
                          style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Флэт уайт - 900 тг\n',
                          style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Бреве - 1100 тг\n',
                          style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Рафф - 1050 тг\n',
                          style: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                      ])),
                ],
              ))
        ])));
  }
}
