import 'package:flutter/material.dart';
import 'package:healthy_app/Screens/login_register_screen.dart';
import 'package:healthy_app/Screens/daily_check_in.dart';

import 'Screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
        initialRoute: OnboardingScreen.id,
        routes: {
          OnboardingScreen.id: (context) => OnboardingScreen(),
          DailyCheckIn.id: (context) => DailyCheckIn(),
          LoginRegisterScreen.id: (context) => LoginRegisterScreen()
        }
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);





  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
 return MaterialApp(
     debugShowCheckedModeBanner: false,

     initialRoute: OnboardingScreen.id,
     routes: {
     OnboardingScreen.id: (context) => OnboardingScreen(),
 }
 );
  }
}
