

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/SoloLearn/Lider/KfcScreen.dart';
import 'package:flutter_application_1/SoloLearn/Lider/StarbucksScreen.dart';
import 'package:flutter_application_1/SoloLearn/MCScreen.dart';
import 'package:flutter_application_1/SoloLearn/MegaScreen.dart';
import 'package:flutter_application_1/src/router/routing_const.dart';
import 'package:flutter_application_1/src/screens/auth/CenterScreen.dart';
import 'package:flutter_application_1/src/screens/auth/ForumScreen.dart';
import 'package:flutter_application_1/src/screens/auth/MainScreen.dart';
import 'package:flutter_application_1/src/screens/auth/NextScreen/Four.dart';
import 'package:flutter_application_1/src/screens/auth/NextScreen/One.dart';
import 'package:flutter_application_1/src/screens/auth/NextScreen/Three.dart';
import 'package:flutter_application_1/src/screens/auth/NextScreen/Two.dart';
import 'package:flutter_application_1/src/screens/auth/RegisterScreen.dart';
import 'package:flutter_application_1/src/screens/auth/TowerScreen.dart';
import 'package:flutter_application_1/src/screens/auth/auth_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => AuthScreen(),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => RegisterScreen(),
        );
      case HomeRoute:
        return CupertinoPageRoute(
          builder: (context) => MainScreen(),
        );
      case ThreeRoute:
        return CupertinoPageRoute(
          builder: (context) => ThreeScreen(),
        );
      case OneRoute:
        return CupertinoPageRoute(
          builder: (context) => OneScreen(),
        );
      case TwoRoute:
        return CupertinoPageRoute(
          builder: (context) => TwoScreen(),
        );
      case FourRoute:
        return CupertinoPageRoute(
          builder: (context) => FourScreen(),
        );
      case StarbucksRoute:
        return CupertinoPageRoute(
          builder: (context) => StarbucksScreen(),
        );
      case KfcRoute:
        return CupertinoPageRoute(builder: (context) => KfcScreen());
      case MCRoute:
        return CupertinoPageRoute(builder: (context) => MCScreen());
      case ProfileRoute:
        return CupertinoPageRoute(
          builder: (context) => RegisterScreen(),
        );
      case TowerRoute:
        return CupertinoPageRoute(
          builder: (context) => TowerScreen(),
        );
      case CenterRoute:
        return CupertinoPageRoute(
          builder: (context) => CenterScreen(),
        );
      case ForumRoute:
        return CupertinoPageRoute(
          builder: (context) => ForumScreen(),
        );

      case MEGARoute:
        return CupertinoPageRoute(
          builder: (context) => MEGAScreen(),
        );

      default:
        return CupertinoPageRoute(
          builder: (context) => AuthScreen(),
        );
    }
  }
}
