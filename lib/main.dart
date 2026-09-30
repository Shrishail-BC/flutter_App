import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utils/router.dart';
import 'package:my_app/widgets/theme.dart';
import 'page/home_page.dart';
import 'page/login.dart';
import 'widgets/theme.dart';

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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
        initialRoute: "/",
        routes: {
            "/": (context) => HomePage(),
            MyRountes.homeRoute: (context) => HomePage(),
            MyRountes.loginRoute: (context) => Login(),
        },
      );
  }
}

