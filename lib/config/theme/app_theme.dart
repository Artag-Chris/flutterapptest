import 'package:flutter/material.dart';


const Color _customColor= Color(0xFF5c11d4);

const List<Color> _colorThemes=[
_customColor,
Colors.black,
Colors.red,
Colors.yellowAccent,
Colors.blueAccent,
Colors.pink
];

class AppTheme{
  final int selectedColor;

AppTheme({
  this.selectedColor=0,
}):assert(selectedColor>=0 && selectedColor<= _colorThemes.length-1,"Colors must be Between 0 and $_colorThemes");

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark
    );
  }
}