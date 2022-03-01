import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class MapPage extends StatelessWidget{
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Карта университета'),
      //   backgroundColor: DarkThemeColors.background01
      // ),
      backgroundColor: DarkThemeColors.background03,
      bottomNavigationBar: CurvedNavigationBar(),
    );
  }
}