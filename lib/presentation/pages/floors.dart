import 'package:flutter/material.dart';
import 'package:finashka_map/presentation/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Floor extends StatelessWidget {

  String assetfolder ='';

  Floor(String Assetfold, {Key? key}) : super(key: key){
    assetfolder = Assetfold;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: DarkThemeColors.background02,
        body: Center(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.transparent,
              child: InteractiveViewer(
                minScale: 0.5,
                maxScale: 1.5,
                child: SvgPicture.asset(
                  assetfolder,
                  width: 100,),
              )
            )
        )
    );
  }
}