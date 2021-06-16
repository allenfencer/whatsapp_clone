import 'package:flutter/material.dart';
import 'homepage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.blueGrey[700]),
      ),
      home: HomePage(),
    ),
  );
}

