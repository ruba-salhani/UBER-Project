import 'package:flutter/material.dart';
import 'package:uber_project/presentation/views/components/components.dart';

class AppBarBuilder extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBuilder({
    Key? key,
    this.text,
  })  : preferredSize = const Size.fromHeight(60),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0
  final String? text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          IconButtonBuilder(
            icon: Icons.arrow_back_ios_new,
            onpressed: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(width: 20.0),
          Text(text!),
        ],
      ),
    );
  }
}
