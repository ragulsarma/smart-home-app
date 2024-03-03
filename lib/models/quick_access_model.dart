import 'dart:ui';

class QuickAccessModel {
  QuickAccessModel({
    required this.name,
    required this.dec,
    required this.enableButton,
    required this.enableGradient,
    required this.bgColor,
  });

  String name;
  String dec;
  bool enableButton;
  bool enableGradient;
  Color bgColor;
}
