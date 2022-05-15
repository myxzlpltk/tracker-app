import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 52, 52, 52);

const InputDecoration formStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  floatingLabelBehavior: FloatingLabelBehavior.never,
  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  isDense: true,
  suffixIconConstraints: BoxConstraints(
    minWidth: 50,
    minHeight: 32,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
);
