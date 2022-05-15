import 'package:flutter/material.dart';
import 'package:tracker_app/commons/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracker App',
      initialRoute: Routes.landing,
      onGenerateRoute: generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.inter().fontFamily,
        scaffoldBackgroundColor: Colors.white10,
      ),
    );
  }
}
