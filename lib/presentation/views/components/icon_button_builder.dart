import 'package:flutter/material.dart';

class IconButtonBuilder extends StatelessWidget {
  const IconButtonBuilder({
    Key? key,
    this.onpressed,
    this.icon,
  }) : super(key: key);
  final VoidCallback? onpressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff514BC3),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
