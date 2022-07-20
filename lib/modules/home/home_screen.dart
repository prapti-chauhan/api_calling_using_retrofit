import 'package:api_calling_retrofit/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  final ctrl = Get.put(HomeScreenController());

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeScreenController>(builder: (context) {
        return ListView.separated(
          itemCount: ctrl.users.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Text('userId: ${ctrl.users[index].userId}'),
                  Text('id: ${ctrl.users[index].id}'),
                  Text('title: ${ctrl.users[index].title}'),
                  Text(
                    '${ctrl.users[index].completed}',
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor:
                            ctrl.users[index].completed ? Colors.green : Colors.red),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container();
          },
        );
      }),
    );
  }
}
