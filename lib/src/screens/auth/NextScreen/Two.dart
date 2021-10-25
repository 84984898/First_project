import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
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
                          'Только сегодня мы дарим скидки на все Фудкорты  \n',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Об акции:\n',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                        text:
                            'Зайдите в приложение "Dostyk Plaza"\n В раздел Акции впишите промокод "Food777" и скидка 30% действует на Фудкорты  ')
                  ]))
            ],
          ))
    ]));
  }
}
