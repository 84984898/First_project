import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/SoloLearn/FeedScreen.dart';
import 'package:flutter_application_1/SoloLearn/profileScreen.dart';
import 'package:flutter_application_1/src/router/router.dart';

import 'package:flutter_application_1/src/screens/auth/RegisterScreen.dart';

import 'LocationScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_favorites_fill), label: 'Лента'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_favorites_alt_fill),
              label: 'Избранное'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.location_solid), label: 'Карта'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'Профиль'),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          onGenerateRoute: AppRouter.generateRoute,
          builder: (context) {
            switch (index) {
              case 0:
                return FeedScreen();
              case 1:
                return RegisterScreen();
              case 2:
                return LocationScreen();
              case 3:
                return ProfileScreen();
              default:
                return ProfileScreen();
            }
          },
        );
      },
    );
  }
}
