import 'package:flutter/material.dart';
import 'package:offlinefirst/modules/home/home_controller.dart';
import 'package:offlinefirst/shared/di/dependencies.dart';
import 'package:offlinefirst/shared/helpers/state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Dependencies.get<HomeController>(context);
    controller.getPosts();
    return Scaffold(
        body: AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        if (controller.state == AppState.success) {
          return ListView.builder(
            itemCount: controller.posts.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(controller.posts[index].title),
            ),
          );
        } else if (controller.state == AppState.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.state == AppState.error) {
          return const Center(
            child: Text("Não foi possível realizar a requisição"),
          );
        } else {
          return const SizedBox();
        }
      },
    ));
  }
}
