import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:uber_project/presentation/router/app_router.gr.dart';
import 'package:uber_project/presentation/views/components/drawer/custom_dialog.dart';
import 'package:uber_project/presentation/views/components/drawer/custom_list_tile.dart';
import 'package:uber_project/presentation/views/components/drawer/profile_image.dart';

class DrawerBuilder extends StatefulWidget {
  const DrawerBuilder({Key? key}) : super(key: key);

  @override
  State<DrawerBuilder> createState() => _DrawerBuilderState();
}

class _DrawerBuilderState extends State<DrawerBuilder> {
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
                const ProfileImage(),
                //            const CircleAvatar(
                //   backgroundColor: Color(0xff514BC3),
                //   radius: 55.0,
                //   backgroundImage: AssetImage('assets/images/person2.png'),
                // ),
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
              ontap: () {
                context.pushRoute(const HistoryScreen());
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomListTile(
              icon: Icons.notifications_outlined,
              text: 'Notifications',
              ontap: () {
                context.pushRoute(const NotificationsScreen());
              },
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
              ontap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialog(
                      title: "Log out",
                      content: "Are you sure you wany to log out?",
                      firstButtonChild: "Cancel",
                      firstButtonOnpressd: () {
                        Navigator.of(context).pop();
                      },
                      secondButtonChild: "Log out",
                      secondButtonOnpressd: () {},
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
