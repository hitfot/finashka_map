import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:finashka_map/presentation/pages/shedule/widgets/lesson_card.dart';

class SchedulePage extends StatelessWidget{
  SchedulePage({Key? key}) : super(key: key);

  List schedule_list = [1, 2, 5];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Расписание'),
          centerTitle: true,
          backgroundColor: DarkThemeColors.background01
      ),
      backgroundColor: DarkThemeColors.background02,
      body:
        ListView.builder(
          itemCount: schedule_list.length,
          itemBuilder: (BuildContext context, int index){
            return const LessonCard(name: '1', teacher: 'r', room: 'oom', type: 'type', timeStart: 'timeStart', timeEnd: 'timeEnd');
          },
      ),
    );
  }
}