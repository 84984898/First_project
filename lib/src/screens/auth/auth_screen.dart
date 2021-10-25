import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/SoloLearn/FeedScreen.dart';

import 'package:flutter_application_1/src/router/routing_const.dart';
import 'package:flutter_application_1/src/screens/auth/RegisterScreen.dart';
import 'package:hive/hive.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
Dio dio = Dio();

// ...

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              controller: emailController,
              placeholder: 'Логин или почта',
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
            ),

            // Добавляем разделительную линию между полями
            Container(
              height: 1,
              color: Color(0xB70004F3),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
            ),

            CupertinoTextField(
              controller: passwordController,
              placeholder: 'Пароль',
              obscureText: true,
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
            ),

            SizedBox(height: 32),

            CupertinoButton.filled(
              onPressed: () {
                Navigator.popAndPushNamed(context, HomeRoute);
                CupertinoPageRoute(builder: (context) {
                  return FeedScreen();
                });

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CupertinoButton(
                    child: Text('Войти'),
                    onPressed: () async {
                      Dio dio = Dio();
                      Box tokensBox = Hive.box('tokens');

                      print(emailController.text);
                      try {
                        print(tokensBox.get('access'));
                        print(tokensBox.get('refresh'));

                        Response response = await dio.post(
                          'http://api.codeunion.kz/api/v1/auth/login',
                          data: {
                            'email': emailController.text,
                            'password': passwordController.text,
                          },
                        );
                        tokensBox.put(
                            'access', response.data['tokens']['accessToken']);
                        tokensBox.put(
                            'refresh', response.data['tokens']['refreshToken']);

                        Navigator.pushReplacementNamed(context, MainRoute);
                      } on DioError catch (e) {
                        print(e.response!.data);
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Text('Ошибка'),
                              content: Text('Неправильный логин или пароль!'),
                              actions: [
                                CupertinoButton(
                                  child: Text('ОК'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            );
                          },
                        );
                        throw e;
                      }
                    },
                  ),
                );
              },
              child: Text('Войти'),
            ),

            SizedBox(height: 19),

            CupertinoButton.filled(
              onPressed: () {
                Navigator.pushNamed(context, RegisterRoute);

                CupertinoPageRoute(
                  builder: (context) {
                    return RegisterScreen();
                  },
                );
              },
              child: Text('Зарегистрироваться'),
            )
          ],
        ),
      ),
    );
  }
}
