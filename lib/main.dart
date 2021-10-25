import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/common/co/color_constants.dart';
import 'package:flutter_application_1/src/router/router.dart';
import 'package:flutter_application_1/src/router/routing_const.dart';
import 'package:hive_flutter/adapters.dart';


Future<void> main() async {
  await Hive.initFlutter();
   await Hive.openBox('tokens');
  runApp(MyApp());
}
 

class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,

      initialRoute: AuthRoute,
      // Задаём тему приложения
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        barBackgroundColor: AppColors.white,
      ),
    );
  }
}
