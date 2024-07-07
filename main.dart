import 'package:flutter/material.dart';
import 'package:gem/leaderboad.dart';
import 'signup_widget.dart';
import 'login_widget.dart';
import 'area.dart';
import 'home.dart'; 
import 'rsurvey.dart';
import 'rsurvey2.dart';
import 'csurvey.dart';
import 'csurvey2.dart';
import 'rewards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SignUpWidget(),
        '/login': (context) => const LoginWidget(),
        '/area': (context) => const Area(),
        '/home': (context) => const Home(), // Add Home widget route
        '/rsurvey': (context) => const RSurvey(),
        '/rsurvey2': (context) => const RSurvey2(),
        '/csurvey': (context) =>  const CSurvey(),
        '/csurvey2': (context) => const CSurvey2(),
        '/lead': (context) => const Leaderboard(),
        '/rewards': (context) => const Rewards(),
      },
    );
  }
}
