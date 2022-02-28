import 'package:finashka_map/presentation/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:finashka_map/presentation/pages/map.dart';
import 'package:finashka_map/presentation/pages/schedule.dart';

Future<void> main() async{
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context){
//
//     // Устанавливаем ориентацию телефона на вертикальную
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitDown,
//       DeviceOrientation.portraitUp,
//     ]);
//
//     // Сделали верхнюю шторку прозрачной
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//     ));
//   }
// }