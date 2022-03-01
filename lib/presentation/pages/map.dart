import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapPage extends StatelessWidget{
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Карта'),
          backgroundColor: DarkThemeColors.background01
      ),
      backgroundColor: DarkThemeColors.background02,
      body: SvgPicture.asset('assets/image.svg')
    );
  }
}