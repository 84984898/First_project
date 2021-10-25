import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MCScreen extends StatelessWidget {
  const MCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('McDonalds'),
        ),
        child: ListView(
          children: [
            Container(
                height: 170,
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amber,
                      Colors.amber.shade900,
                    ]),
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Wrap(
                  children: [
                    Image.asset(
                      'assets/icons/mac.png',
                      height: 130,
                    )
                  ],
                )),
            Container(
              height: 170,
              width: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.brown.shade900,
                    Colors.brown,
                  ]),
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 19,
                  ),
                  Image.asset(
                    'assets/icons/fluri.png',
                    height: 140,
                  )
                ],
              ),
            ),
            Container(
                height: 170,
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.red.shade900,
                      Colors.amber.shade100,
                    ]),
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 26,
                    ),
                    Image.asset(
                      'assets/icons/happy.png',
                      height: 140,
                    )
                  ],
                )),
            Container(
                height: 170,
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.red,
                      Colors.amber,
                    ]),
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(children: [
                  SizedBox(
                    width: 23,
                  ),
                  Image.asset(
                    'assets/icons/kombo.png',
                    height: 120,
                  )
                ])),
            Container(
                height: 170,
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.purple,
                      Colors.amber,
                    ]),
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/icons/ice.png',
                    height: 110,
                  )
                ])),
            Container(
                height: 170,
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amber,
                      Colors.amber.shade50,
                    ]),
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(children: [
                  SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    'assets/icons/twister.png',
                    height: 110,
                  )
                ])),
            Container(
                height: 170,
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.red,
                    ]),
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(children: [
                  SizedBox(
                    width: 26,
                  ),
                  Image.asset(
                    'assets/icons/soki.png',
                    height: 140,
                  )
                ])),
            Container(
                height: 170,
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.grey,
                    ]),
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(children: [
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icons/chburger.png',
                    height: 160,
                  )
                ]))
          ],
        ));
  }
}
