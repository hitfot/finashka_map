import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';

class SchedulePage extends StatelessWidget{
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /*appBar: AppBar(
          title: const Text('Расписание'),
          backgroundColor: DarkThemeColors.background01
      ),*/
      backgroundColor: DarkThemeColors.background03,
    );
  }
}