import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';

class LessonCard extends StatelessWidget{
  final String name;
  final String teacher;
  final String room;
  final String type;
  final String timeStart;
  final String timeEnd;

  const LessonCard({
    Key? key,
    required this.name,
    required this.teacher,
    required this.room,
    required this.type,
    required this.timeStart,
    required this.timeEnd,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: const <Widget> [
            ListTile(
              leading: Text('8:30'+'\n10:00', style: TextStyle(fontSize: 15, color: DarkThemeColors.deactive), textAlign: TextAlign.center,),
              title: Text('Математический анализ, '+ 'А-5', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.left),
              subtitle: Text('Прохоров М.Н.', style: TextStyle(fontSize: 16, color: DarkThemeColors.deactive),),
              trailing: Icon(Icons.circle, color: DarkThemeColors.colorful01,),
            ),
          ],
        ),
        color: DarkThemeColors.background03,
      ),
    );
  }
}