import 'package:car_sell/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Sell',
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(color: Colors.blueGrey[900]),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(color: Colors.blueGrey[900]),
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.blueGrey[800],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueGrey[900],
          textTheme: ButtonTextTheme.primary,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.blueGrey[500],
            shape: const StadiumBorder(),
            padding: const EdgeInsets.all(10.0),
            textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2),
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
