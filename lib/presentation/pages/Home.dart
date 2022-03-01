import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:finashka_map/presentation/pages/map.dart';
import 'package:finashka_map/presentation/pages/schedule.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      /*appBar: AppBar(
          title: const Text('Домашняя страница'),
          centerTitle: true,
          backgroundColor: DarkThemeColors.background01
      ),*/
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child: IconButton(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const SchedulePage()));},
                  iconSize: 96.0,
                  icon: const Icon(Icons.article),
                  color: DarkThemeColors.secondary,
                )
            ),
            Expanded(
                child: IconButton(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const MapPage()));},
                  iconSize: 96.0,
                  icon: const Icon(Icons.map),
                  color: DarkThemeColors.secondary,
                )
            ),
          ],
        ),
      ),
      backgroundColor: DarkThemeColors.background03,
    );
  }
}

