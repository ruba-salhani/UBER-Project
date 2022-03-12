import 'package:flutter/material.dart';
import 'package:uber_project/presentation/views/components/components.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBuilder(),
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        ElevatedButton(
          child: Text('kkkk'),
          onPressed: () {},
        )
      ]),
    );
  }
}
