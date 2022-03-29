import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 10,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
