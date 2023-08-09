// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

extension SoriyaBoxDecoration on BoxDecoration {
  //border
  BoxDecoration get borderred =>
      copyWith(border: Border.all(color: Colors.red));
  BoxDecoration get borderblue =>
      copyWith(border: Border.all(color: Colors.blue));
  BoxDecoration get borderpink =>
      copyWith(border: Border.all(color: Colors.pink));
  BoxDecoration get borderyellow =>
      copyWith(border: Border.all(color: Colors.yellow));
  BoxDecoration get borderamber =>
      copyWith(border: Border.all(color: Colors.amber));
  BoxDecoration get borderteal =>
      copyWith(border: Border.all(color: Colors.teal));
  BoxDecoration get borderlime =>
      copyWith(border: Border.all(color: Colors.lime));
  BoxDecoration get borderbrown =>
      copyWith(border: Border.all(color: Colors.brown));
  BoxDecoration get borderpurple =>
      copyWith(border: Border.all(color: Colors.purple));

  BoxDecoration get defaultshadow => copyWith(boxShadow: [
        BoxShadow(
          blurRadius: 20,
          blurStyle: BlurStyle.outer,
          color: Colors.black.withOpacity(0.1),
          offset: Offset(0, 10),
          spreadRadius: 0,
        ),
        BoxShadow(
          blurRadius: 20,
          blurStyle: BlurStyle.outer,
          color: Colors.red.withOpacity(0.1),
          offset: Offset(0, -10),
          spreadRadius: 0,
        )
      ]);
}

BoxDecoration decoration = BoxDecoration();
