import 'package:flutter/material.dart';
import 'package:uber_project/presentation/views/components/drawer/custom_list_tile.dart';

class DrawerBuilder extends StatelessWidget {
  const DrawerBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff0D1724),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xff514BC3),
                  radius: 55.0,
                  backgroundImage: AssetImage('assets/images/person2.png'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Sebin Francis",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "flutter@flutter.com",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Divider(
              color: Color(0xff514BC3),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomListTile(
              icon: Icons.home_outlined,
              text: 'Home',
              ontap: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomListTile(
              icon: Icons.history,
              text: 'Travel History',
              ontap: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomListTile(
              icon: Icons.notifications_outlined,
              text: 'Notifications',
              ontap: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomListTile(
              icon: Icons.settings_outlined,
              text: 'Settings',
              ontap: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomListTile(
              icon: Icons.logout_outlined,
              text: 'Log Out',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
