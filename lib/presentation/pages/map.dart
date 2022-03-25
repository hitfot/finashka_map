import 'package:finashka_map/presentation/Icons/new_icons_icons.dart';
import 'package:finashka_map/presentation/pages/floors.dart';
import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MapPage extends StatefulWidget {
  @override
  int SelectedFloor = 0;
  MapPage(int SelFloor){
    SelectedFloor = SelFloor;
  }
  _MapPageState createState() => _MapPageState(SelectedFloor);
}
class _MapPageState extends State<MapPage>{
  final List<Widget> _Floors = [
    Floor('assets/map/ref_map/floor0.svg'),
    Floor('assets/map/ref_map/floor1.svg'),
    Floor('assets/map/ref_map/floor2.svg'),
    Floor('assets/map/ref_map/floor3.svg'),
    Floor('assets/map/ref_map/floor4.svg'),
    Floor('assets/map/ref_map/floor5.svg')
  ];
  int _activeFloor = 2;
  _MapPageState(int SelectedFloor){
    _activeFloor = SelectedFloor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkThemeColors.background01,
      floatingActionButton: SpeedDial(
        buttonSize: 50,
        backgroundColor: DarkThemeColors.secondary,
        overlayOpacity: 0,
        animationSpeed: 350,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            backgroundColor: DarkThemeColors.background03,
            child: Icon(NewIcons.number_square_zero_bold_svgrepo_com, color: DarkThemeColors.secondary,),
            label: 'Нулевой этаж',
            onTap: () => _activeFloor = 0,
          ),
          SpeedDialChild(
            backgroundColor: DarkThemeColors.background03,
            child: Icon(NewIcons.number_square_one_bold_svgrepo_com_1, color: DarkThemeColors.secondary,),
            label: 'Первый этаж',
            onTap: () => _activeFloor = 1,
          ),
          SpeedDialChild(
            backgroundColor: DarkThemeColors.background03,
            child: Icon(NewIcons.number_square_two_bold_svgrepo_com, color: DarkThemeColors.secondary,),
            label: 'Второй этаж',
          ),
          SpeedDialChild(
            backgroundColor: DarkThemeColors.background03,
            child: Icon(NewIcons.number_square_three_bold_svgrepo_com, color: DarkThemeColors.secondary,),
            label: 'Третий этаж',
          ),
          SpeedDialChild(
            backgroundColor: DarkThemeColors.background03,
            child: Icon(NewIcons.number_square_four_bold_svgrepo_com, color: DarkThemeColors.secondary,),
            label: 'Четвертый этаж',
          ),
          SpeedDialChild(
            backgroundColor: DarkThemeColors.background03,
            child: Icon(NewIcons.number_square_five_bold_svgrepo_com, color: DarkThemeColors.secondary,),
            label: 'Пятый этаж',
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          /*NavigationRail(
            backgroundColor: Colors.transparent,
            selectedIndex: _activeFloor,
            onDestinationSelected: (int index) {
              setState(() {
                _activeFloor = index;
              });
              },
            minWidth: 50,
            groupAlignment: 0,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(NewIcons.number_square_zero_bold_svgrepo_com, color: DarkThemeColors.secondary,),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(NewIcons.number_square_one_bold_svgrepo_com_1, color: DarkThemeColors.secondary,),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(NewIcons.number_square_three_bold_svgrepo_com, color: DarkThemeColors.secondary,),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(NewIcons.number_square_three_bold_svgrepo_com, color: DarkThemeColors.secondary,),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(NewIcons.number_square_four_bold_svgrepo_com, color: DarkThemeColors.secondary,),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(NewIcons.number_square_five_bold_svgrepo_com, color: DarkThemeColors.secondary,),
                label: Text(''),
              ),
            ],
          ),*/
          //const VerticalDivider(thickness: 1, width: 1, color: DarkThemeColors.background02,),
          Expanded(
              child: Center(
                child: _Floors[_activeFloor],
              )
          )
        ],
      ),
    );
  }
}
