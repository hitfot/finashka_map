import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:finashka_map/presentation/pages/map.dart';
import 'package:finashka_map/presentation/pages/shedule/schedule.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child: IconButton(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Pages(0)));},
                  iconSize: 96.0,
                  icon: const Icon(Icons.article),
                  color: DarkThemeColors.secondary,
                )
            ),
            Expanded(
                child: IconButton(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Pages(1)));},
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

class Pages extends StatefulWidget {
  int SelectedPage = 0;

  Pages(int SelPage, {Key? key}) : super(key: key){
    SelectedPage = SelPage;
  }

  @override
  _PagesState createState() => _PagesState(SelectedPage);
}

class _PagesState extends State<Pages> {
  int _activePage = 0;
  final List<Widget> _tabItems = [SchedulePage(), MapPage(0)];

  _PagesState(int SelectedPage){
    _activePage = SelectedPage;
  }

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkThemeColors.background03,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _activePage,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.article, size: 40, color: DarkThemeColors.secondary,),
          Icon(Icons.map, size: 40, color: DarkThemeColors.secondary,),
        ],
        color: DarkThemeColors.background01,
        buttonBackgroundColor: Colors.transparent,
        backgroundColor: DarkThemeColors.background02,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _activePage = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _tabItems[_activePage],
    );
  }
}