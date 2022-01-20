import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample_dashboard_panel/constants.dart';
import 'package:sample_dashboard_panel/models/recent_file.dart';
import 'package:sample_dashboard_panel/screens/dashboard/components/chart.dart';
import 'package:sample_dashboard_panel/screens/dashboard/components/header.dart';
import 'package:sample_dashboard_panel/screens/dashboard/components/my_files.dart';
import 'package:sample_dashboard_panel/screens/dashboard/components/recent_file_container.dart';
import 'package:sample_dashboard_panel/screens/dashboard/components/storage_info_card.dart';

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
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFileContainer(),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(defaultPadding),
                    // height: 500,
                    // color: secondaryColor,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Storage Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: defaultPadding),
                        Chart(),
                        StorageInfoCard(
                          amountOfFiles: '1.3GB',
                          title: 'Documents Files',
                          svgSrc: 'icons/Documents.svg',
                          numOfFiles: 1328,
                        ),
                        StorageInfoCard(
                          amountOfFiles: '15.2GB',
                          title: 'Medias Files',
                          svgSrc: 'icons/media.svg',
                          numOfFiles: 128,
                        ),
                        StorageInfoCard(
                          amountOfFiles: '15.2GB',
                          title: 'Others Files',
                          svgSrc: 'icons/folder.svg',
                          numOfFiles: 1328,
                        ),
                        StorageInfoCard(
                          amountOfFiles: '15.2GB',
                          title: 'Unknow Files',
                          svgSrc: 'icons/unknown.svg',
                          numOfFiles: 1328,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
