import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/common_schemas.dart';

get screenNames => _screenNames;
List<Screens> _screenNames = ScreenNames.values
    .map(
        (e) => Screens(key: e, value: getScreenName(e), icon: getScreenIcon(e)))
    .toList();

enum ScreenNames {
  animation,
  stack,
}

String getScreenName(ScreenNames screen) {
  switch (screen) {
    case ScreenNames.animation:
      return "Animation";
    case ScreenNames.stack:
      return "Stack";
    default:
      return "Unknown"; // or throw an exception if needed
  }
}

Icon getScreenIcon(ScreenNames screen) {
  switch (screen) {
    case ScreenNames.animation:
      return const Icon(Icons.animation);
    case ScreenNames.stack:
      return const Icon(Icons.stacked_bar_chart_outlined);
    default:
      return const Icon(Icons.eight_mp); // or throw an exception if needed
  }
}
