import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';

class MapPage extends StatelessWidget{
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Карта университета'),
        backgroundColor: DarkThemeColors.background01
      ),
      backgroundColor: DarkThemeColors.background03,
    );
  }
}