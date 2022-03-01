import 'package:finashka_map/presentation/Icons/new_icons_icons.dart';
import 'package:finashka_map/presentation/pages/floors.dart';
import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MapPage extends StatefulWidget {
  @override
  int SelectedFloor = 0;
  MapPage(int SelFloor){
    SelectedFloor = SelFloor;
  }
  _MapPageState createState() => _MapPageState(SelectedFloor);
}
class _MapPageState extends State<MapPage>{
  final List<Widget> _Floors = [const Floor0(), const Floor1(), const Floor2(), const Floor3(), const Floor4(), const Floor5()];
  int _activeFloor = 0;
  _MapPageState(int SelectedFloor){
    _activeFloor = SelectedFloor;
  }
  final GlobalKey<CurvedNavigationBarState> _SecbottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Карта'),
          backgroundColor: DarkThemeColors.background01
      ),
      backgroundColor: DarkThemeColors.background02,
      bottomNavigationBar: CurvedNavigationBar(
        key: _SecbottomNavigationKey,
        index: _activeFloor,
        height: 60.0,
        items: const <Widget>[
          Icon(NewIcons.number_square_zero_bold_svgrepo_com, size: 30, color: DarkThemeColors.primary,),
          Icon(NewIcons.number_square_one_bold_svgrepo_com_1, size: 30, color: DarkThemeColors.primary,),
          Icon(NewIcons.number_square_two_bold_svgrepo_com, size: 30, color: DarkThemeColors.primary,),
          Icon(NewIcons.number_square_three_bold_svgrepo_com, size: 30, color: DarkThemeColors.primary,),
          Icon(NewIcons.number_square_four_bold_svgrepo_com, size: 30, color: DarkThemeColors.primary,),
          Icon(NewIcons.number_square_five_bold_svgrepo_com, size: 30, color: DarkThemeColors.primary,),
        ],
        color: DarkThemeColors.background03,
        buttonBackgroundColor: Colors.transparent,
        backgroundColor: DarkThemeColors.background02,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _activeFloor = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _Floors[_activeFloor],
    );
  }
}
