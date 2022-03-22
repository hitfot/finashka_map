import 'package:finashka_map/presentation/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:finashka_map/presentation/pages/map.dart';
import 'package:finashka_map/presentation/pages/shedule/schedule.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async{
  void initFirebase() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

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