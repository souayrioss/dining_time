import 'package:flutter/material.dart';
import 'color.dart';

final ButtonStyle btnPill = ElevatedButton.styleFrom(
  minimumSize: Size(0, 0),
  elevation: 0,
  primary: white,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(18),
    ),
  ),
);
