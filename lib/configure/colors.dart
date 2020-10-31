import 'package:flutter/material.dart';

// Constant Colors
const Color primaryColor = Color(0xff0ee6b8);
const Color primaryColorDark = Color(0xff44d091);
const Color darkPrimaryColor = Color(0xff11162b);
const Color positionColor = Color(0xff293153);

const Gradient backgroundGradientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.3, 0.9],
    colors: [Color(0xff293153), Color(0xff11162b)]);
// const Color darkPrimaryColor = Color(0xff0C1828);

const Gradient sectionLineGradientColor = LinearGradient(
    begin: Alignment.center,
    end: Alignment.bottomLeft,
    stops: [0.1, 0.5, 0.9],
    colors: [Color(0xff11162b), Color(0xff0ee6b8), Color(0xff11162b)]);
