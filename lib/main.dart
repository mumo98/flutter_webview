import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(
        title: '',
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset("assets/loading_circles.json"),
      //  Column(
      //   children: [Image.asset("assets/logo.png"), const Text("My App")],
      // ),
      backgroundColor: Colors.red,
      nextScreen: const MyHomePage(
        title: '',
      ),
      splashIconSize: 250,
      duration: 3500,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(widget.title),
    ));
  }
}
