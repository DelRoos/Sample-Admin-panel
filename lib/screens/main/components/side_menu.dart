import 'package:flutter/material.dart';
import 'package:sample_dashboard_panel/screens/main/main_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: [
          DrawerHeader(child: Image.asset("images/logo.png")),
          DrawerListTitle(
            press: () {},
            title: 'Dashboard',
            svgSrc: 'icons/menu_dashbord.svg',
          ),
          DrawerListTitle(
            press: () {},
            title: 'Transaction',
            svgSrc: 'icons/menu_tran.svg',
          ),
          DrawerListTitle(
            press: () {},
            title: 'Task',
            svgSrc: 'icons/menu_task.svg',
          ),
          DrawerListTitle(
            press: () {},
            title: 'Documents',
            svgSrc: 'icons/menu_doc.svg',
          ),
          DrawerListTitle(
            press: () {},
            title: 'Store',
            svgSrc: 'icons/menu_store.svg',
          ),
          DrawerListTitle(
            press: () {},
            title: 'Notification',
            svgSrc: 'icons/menu_notification.svg',
          ),
          DrawerListTitle(
            press: () {},
            title: 'Profile',
            svgSrc: 'icons/menu_profile.svg',
          ),
          DrawerListTitle(
            press: () {},
            title: 'Settings',
            svgSrc: 'icons/menu_setting.svg',
          ),
        ]),
      ),
    );
  }
}
