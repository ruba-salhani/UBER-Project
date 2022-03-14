import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.ontap,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.center,
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff514BC3),
        ),
        child: Icon(icon),
      ),
      iconColor: Colors.white,
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
      onTap: ontap,
    );
  }
}
