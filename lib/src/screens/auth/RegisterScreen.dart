import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Авторизация'),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
         placeholder:'Ф.И.О',
        decoration : BoxDecoration(
           color: CupertinoColors.white
         ),
 padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
          ),

          Container(
            height: 1,
            color: Color(0xFFE4E4E4),
            margin: const EdgeInsets.symmetric(horizontal: 16),
          ),


           CupertinoTextField(
         placeholder:'Пароль',
        decoration : BoxDecoration(
           color: CupertinoColors.white
         ),
 padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
          ),
          // Добавляем разделительную линию между полями
          Container(
            height: 1,
            color: Color(0xFFE4E4E4),
            margin: const EdgeInsets.symmetric(horizontal: 16),
          ),

          CupertinoTextField(
            placeholder: 'Повторите пароль',
            obscureText: true,
            decoration: BoxDecoration(
              color: CupertinoColors.white,
            ),
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
          ),
             
             SizedBox(height: 32), 
            
                        CupertinoButton.filled(
               onPressed: () {},
              child: Text('Войти'),
            ),

            
            
          
         
        ]
        )
        );
  }
}
