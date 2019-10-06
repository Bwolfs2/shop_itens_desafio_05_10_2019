import 'package:flutter/material.dart';
import 'package:shop_itens_desafio_05_10_2019/app/pages/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffFAFAFA),
        primaryColorBrightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color:Colors.white,
          elevation: 0,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold
            
            ),
            
          )
        )
      ),
      home: HomeModule(),
    );
  }
}
