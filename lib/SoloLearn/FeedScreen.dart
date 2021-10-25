import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/router/routing_const.dart';
import 'package:like_button/like_button.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  get onLikeButtonTapped => null;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
            child: Container(
                child: ListView(children: [
      CupertinoTextField(
        
        placeholder: ('Поиск'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: CupertinoColors.white,
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      SizedBox(
        height: 19,
      ),
      CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pushNamed(context, TowerRoute);
          },
          child: Container(
              height: 370,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.purpleAccent.shade700,
                    Colors.indigoAccent.shade700,
                    Colors.blue.shade300
                  ]),
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://ctmalls.ru/images/esentai-mall-almaty.jpg'),
                      height: 240,
                    ),
                    Flexible(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        style:
                                            DefaultTextStyle.of(context).style,
                                        children: const <TextSpan>[
                                          TextSpan(
                                            text: 'Esentai Mall\n',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text:
                                                'Один из крупнейших торговых центров в ул. Аль-Фараби',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    overflow: TextOverflow.fade,
                                  ),
                                  LikeButton(
                                    onTap: onLikeButtonTapped,
                                    likeCount: 9999999,
                                  ),
                                ])))
                  ]))),
      CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pushNamed(context, CenterRoute);
          },
          child: Container(
              height: 370,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.purpleAccent.shade700,
                    Colors.indigoAccent.shade700,
                    Colors.yellow.shade300
                  ]),
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://forbes.kz/img/articles/1703fca00b83ce064b4cbb8ad22a3bd4-small.jpg'),
                      height: 240,
                    ),
                    Flexible(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Dostyk Plaza\n',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            'Один из крупнейших торговых центров в ул. Достык ',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  overflow: TextOverflow.fade,
                                ),
                                LikeButton(
                                  onTap: onLikeButtonTapped,
                                  likeCount: 9999999,
                                )
                              ])),
                    )
                  ]))),
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.pushNamed(context, ForumRoute);
        },
        child: Container(
            height: 370,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue.shade700,
                  Colors.blue.shade200,
                ]),
                borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://forumalmaty.kz/files/_storage_thumbs_8acc2c93a015ad5644be732124105f34_630x472_100_1586801323_thumbnail_adb115059e28d960fa8badfac5516667.jpg'),
                    height: 240,
                  ),
                  Flexible(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Forum\n',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            'Один из крупнейших торговых центров в ул. Сейфуллина ',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  overflow: TextOverflow.fade,
                                ),
                                LikeButton(
                                  onTap: onLikeButtonTapped,
                                  likeCount: 9999999,
                                )
                              ])))
                ])),
      ),
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.pushNamed(context, MEGARoute);
        },
        child: Container(
            height: 370,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue.shade700,
                  Colors.amber.shade200,
                ]),
                borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://restolife.kz/upload/information_system_6/1/6/7/item_16735/information_items_property_18881.jpg'),
                    height: 240,
                  ),
                  Flexible(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'MEGA park\n',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            'Один из крупнейших торговых центров в ул. Сейфуллина ',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  overflow: TextOverflow.fade,
                                ),
                                LikeButton(
                                  onTap: onLikeButtonTapped,
                                  likeCount: 9999999,
                                )
                              ])))
                ])),
      )
    ]))));
  }
}
