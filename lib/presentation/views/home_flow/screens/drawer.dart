import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAssets.splash,
                  height: 50,
                ),
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    padding: EdgeInsets.all(2),
                    constraints: BoxConstraints(),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              style: AppTextstyle.bodyTextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Bookings',
              style: AppTextstyle.bodyTextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Invoices',
              style: AppTextstyle.bodyTextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          ListTile(
            title: Text(
              'Profile Details',
              style: AppTextstyle.bodyTextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Settings',
              style: AppTextstyle.bodyTextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
