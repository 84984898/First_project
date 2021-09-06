import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/screens/auth/RegisterScreen.dart';
         
      class AuthScreen extends StatelessWidget{
  const AuthScreen({Key? key}) : super(key: key);


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
              placeholder: 'Логин или почта',
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

            CupertinoTextField(
              placeholder: 'Пароль',
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

            SizedBox(height: 19),

            CupertinoButton.filled(
              onPressed: () {
  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (context) {
        return RegisterScreen();
      },
    ),
  );
},
              child: Text('Зарегистрироваться'),

           ),
          ],
        ),
      ),
    );
  }
}
