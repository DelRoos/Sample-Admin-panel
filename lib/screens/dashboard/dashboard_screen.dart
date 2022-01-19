import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample_dashboard_panel/constants.dart';
import 'package:sample_dashboard_panel/screens/dashboard/components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
          ],
        ),
      ),
    );
  }
}
