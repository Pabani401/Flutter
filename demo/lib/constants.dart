import 'package:flutter/material.dart';

const kBackgroundColor=Color(0xFF090C20);
const Color kTileColor = Color(0xFF1D1F33);
const Color kActiveCardColor = Color(0xFFFFFFFF);
const Color kInactiveCardColor = Color(0xFF8D8E98);
const  kBottomContainerColor = Color(0xFFEB1555);
const kSelectedTileColor = Color.fromARGB(255, 46, 29, 51);

var kTileBorderDecoration = BoxDecoration(
                        color: kTileColor,
                        borderRadius: BorderRadius.circular(5),
                        );

var kTileSelectedBorderDecoration = BoxDecoration(
                        color: kSelectedTileColor,
                        borderRadius: BorderRadius.circular(5),
                        );