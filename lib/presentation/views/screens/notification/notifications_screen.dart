import 'package:flutter/material.dart';
import 'package:uber_project/presentation/views/components/components.dart';
import 'package:uber_project/presentation/views/screens/notification/notification_item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        //  Row(
        //   children: const [
        //     AppBackButton(),
        //     SizedBox(width: 20.0),
        //     Text('Notifications'),
        //   ],
        // ),
        leading: const AppBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return const NotificationItem(
              title: 'System',
              subtitle: 'Your booking .........',
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 20.0),
          itemCount: 10,
        ),
      ),
    );
  }
}
