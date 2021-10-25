import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/router/routing_const.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Профиль'),
        ),
        child: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
            child: Image(
              image: AssetImage('assets/icons/Group_12592.png'),
            ),
          ),
          RichText(
              text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                text: 'Илахунов Алим',
                style: TextStyle(
                  fontSize: 25,
                ),
              )
            ],
          )),
          SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                TextSpan(
                    text: 'A.ilakhunov@bk.ru',
                    style: TextStyle(fontSize: 16, color: Colors.grey))
              ])),
          SizedBox(
            height: 19,
          ),
          CupertinoButton(
            onPressed: () {
              Navigator.pushNamed(context, AuthRoute);
            },
            child: RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Выйти',
                        style: TextStyle(fontSize: 16, color: Colors.red)),
                  ]),
            ),
          )
        ])));
  }
}
