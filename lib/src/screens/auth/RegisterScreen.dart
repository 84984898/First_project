import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/router/routing_const.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Регистрация'),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Заполните Данные '),
          CupertinoTextField(
            placeholder: 'Номер Телефона',
            decoration: BoxDecoration(
              color: CupertinoColors.white,
            ),
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
          ),

          Container(
            height: 1,
            color: Color(0xFFE4E4E4),
            margin: const EdgeInsets.symmetric(horizontal: 16),
          ),

          CupertinoTextField(
            placeholder: 'Ф.И.О',
            decoration: BoxDecoration(
              color: CupertinoColors.white,
            ),
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
          ),

          Container(
            height: 1,
            color: Color(0xFFE4E4E4),
            margin: const EdgeInsets.symmetric(horizontal: 16),
          ),
          CupertinoTextField(
            placeholder: 'Пароль',
            obscureText: true,
            decoration: BoxDecoration(
              color: CupertinoColors.white,
            ),
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
          ),
          // Добавляем разделительную линию между полями
          Container(
            height: 1,
            color: Color(0xFFE4E4E4),
            margin: const EdgeInsets.symmetric(horizontal: 16),
          ),

          CustomTextField(),

          SizedBox(height: 32),

          CupertinoButton.filled(
            onPressed: () {
              Navigator.pushNamed(context, HomeRoute);
            },
            child: Text('Создать аккаунт'),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.placeholder = 'Повторите пароль',
  }) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: placeholder,
      obscureText: true,
      decoration: BoxDecoration(
        color: CupertinoColors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
    );
  }
}
