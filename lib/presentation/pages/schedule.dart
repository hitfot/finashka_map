import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';

class SchedulePage extends StatelessWidget{
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Расписание'),
          backgroundColor: DarkThemeColors.background01
      ),
      backgroundColor: DarkThemeColors.background02,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(

              color: DarkThemeColors.background03,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text('8:30\n10:00', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.center,),
                    title: Text('Subject: '+'\nTeacher: '+'\nClass:'+'', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.left),
                    trailing: Icon(Icons.circle, color: DarkThemeColors.colorful01,),
                  ),
                ],
              ),
            ),
            Card(
              color: DarkThemeColors.background03,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text('10:10\n11:40', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.center,),
                    title: Text('Subject: '+'\nTeacher: '+'\nClass:'+'', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.left),
                    trailing: Icon(Icons.circle, color: DarkThemeColors.colorful01,),
                  ),
                ],
              ),
            ),
            Card(
              color: DarkThemeColors.background03,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text('11:50\n13:20', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.center,),
                    title: Text('Subject: '+'\nTeacher: '+'\nClass:'+'', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.left),
                    trailing: Icon(Icons.circle, color: DarkThemeColors.colorful01,),
                  ),
                ],
              ),
            ),
            Card(
              color: DarkThemeColors.background03,
              child: Column(
                children:  const <Widget>[
                  ListTile(
                    leading: Text('14:00\n15:30', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.center,),
                    title: Text('Subject: '+'\nTeacher: '+'\nClass:'+'', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.left),
                    trailing: Icon(Icons.circle, color: DarkThemeColors.colorful01,),
                  ),
                ],
              ),
            ),
            Card(
              color: DarkThemeColors.background03,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text('15:40\n17:10', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.center,),
                    title: Text('Subject: '+'\nTeacher: '+'\nClass:'+'', style: TextStyle(fontSize: 16, color: DarkThemeColors.white), textAlign: TextAlign.left),
                    trailing: Icon(Icons.circle, color: DarkThemeColors.colorful01,),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}