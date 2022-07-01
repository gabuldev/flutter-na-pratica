import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:offlinefirst/modules/home/home_page.dart';
import 'package:offlinefirst/shared/di/dependencies.dart';

import 'home_controller.dart';
import 'home_repository.dart';

class HomeModule extends StatelessWidget {
  const HomeModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dependencies(dependencies: [
      Dependencie<HomeRepository>(
          (i) => HomeRepository(client: i.find<Dio>(context))),
      Dependencie<HomeController>(
          (i) => HomeController(repository: i.find<HomeRepository>(context)))
    ], child: const HomePage());
  }
}
