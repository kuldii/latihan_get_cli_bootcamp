import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_cli/app/data/models/user_model.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<User?>(
          future: controller.getDataUser(2),
          builder: (context, snaphot) {
            if (snaphot.connectionState == ConnectionState.waiting) return CircularProgressIndicator();
            if (snaphot.data == null) return Text("TIDAK ADA DATA");
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("NAMA : ${snaphot.data!.firstName}"),
                Text("EMAIL : ${snaphot.data!.email}"),
              ],
            );
          },
        ),
      ),
    );
  }
}
