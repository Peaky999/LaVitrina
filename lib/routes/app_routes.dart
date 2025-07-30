import 'package:flutter/material.dart'; 
import 'package:lavitrina_app/screens/agendaPais_screen.dart'; 
import 'package:lavitrina_app/screens/cultura_screen.dart'; 
import 'package:lavitrina_app/screens/error_screen.dart'; 
import 'package:lavitrina_app/screens/home_screen.dart'; 
import 'package:lavitrina_app/screens/noticia_screen.dart'; 
import 'package:lavitrina_app/screens/opinion_screen.dart';


class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'agendaPais': (BuildContext context) => const AgendapaisScreen(),
    'cultura': (BuildContext context) => const CulturaScreen(),
    'opinion': (BuildContext context) => const OpinionScreen(),
    'noticia': (BuildContext context) => const NoticiaScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}