import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({Key? key}) : super(key: key);

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
                      text: 'Успейте по участвовать в розыгрыше\n',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Об розыгрыше:\n',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                        text:
                            'В честь дня рождения Mega проходит розыгрыш 1+1 то есть в любых наших бутиках вы можете приобрести вещь и подарок от меги\n')
                  ],
                ),
              )
            ],
          ))
    ]));
  }
}
