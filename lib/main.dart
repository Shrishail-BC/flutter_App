import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utils/router.dart';
import 'page/home_page.dart';
import 'page/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.lato().fontFamily,
          // primaryTextTheme: Googl   GoogleFonts.latoTextStyle(),
          primarySwatch: Colors.red,
        ),
        initialRoute: "/",
        routes: {
            "/": (context) => Login(),
            MyRountes.homeRoute: (context) => HomePage(),
            MyRountes.loginRoute: (context) => Login(),
        },
      );
  }
}

