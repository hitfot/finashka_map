import 'package:finashka_map/presentation/Icons/new_icons_icons.dart';
import 'package:finashka_map/presentation/pages/floors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkThemeColors.background02,
      body: Row(
        children: <Widget>[
          NavigationRail(
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
                icon: Icon(NewIcons.number_square_two_bold_svgrepo_com, color: DarkThemeColors.secondary,),
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
          ),
          const VerticalDivider(thickness: 1, width: 1, color: DarkThemeColors.background02,),
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
