import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:offlinefirst/modules/home/home_module.dart';
import 'package:offlinefirst/modules/splash/splash_page.dart';
import 'package:offlinefirst/shared/di/dependencies.dart';
import 'package:offlinefirst/shared/services/custom_dio/custom_dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dependencies(
        dependencies: [
          Dependencie<Dio>((i) => CustomDio()),
        ],
        child: MaterialApp(
          title: 'Flutter Offline First',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          initialRoute: "/splash",
          routes: {
            "/splash": (context) => const SplashPage(),
            "/home": (context) => const HomeModule()
          },
        ));
  }
}
