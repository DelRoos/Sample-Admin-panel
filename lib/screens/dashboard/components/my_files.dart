import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample_dashboard_panel/constants.dart';
import 'package:sample_dashboard_panel/models/cloud_storage_info.dart';
import 'package:sample_dashboard_panel/screens/dashboard/components/file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My Files", style: Theme.of(context).textTheme.subtitle1),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5, vertical: defaultPadding),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: demoMyFiles.length,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index) => FileCard(
            info: demoMyFiles[index],
          ),
        ),
      ],
    );
  }
}
