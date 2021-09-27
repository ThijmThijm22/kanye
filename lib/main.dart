import 'package:flutter/material.dart';
import 'package:api/pages/home.dart';
import 'package:api/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
  },
));

