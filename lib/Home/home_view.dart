import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbindings/Home/home_controller.dart';
import 'package:getxbindings/back/back_binding.dart';
import 'package:getxbindings/back/back_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                controller.count.value.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: controller.add,
            heroTag: 'increment', // Unique hero tag
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'navigate', // Unique hero tag
            onPressed: () {
              Get.offAll(() => const BackView(), binding: BackBinding());
            },
            child: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
