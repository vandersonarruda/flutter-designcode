import 'package:designcode_app/components/sidebar_row.dart';
import 'package:designcode_app/model/sidebar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(34),
          )),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(
        vertical: 35,
        horizontal: 20,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vanderson Arruda',
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'License end on 21 Jan, 2021',
                      style: kSearchPlaceholderStyle,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SidebarRow(
              item: sidebarItem[0],
            ),
            SizedBox(
              height: 32,
            ),
            SidebarRow(
              item: sidebarItem[1],
            ),
            SizedBox(
              height: 32,
            ),
            SidebarRow(
              item: sidebarItem[2],
            ),
            SizedBox(
              height: 32,
            ),
            SidebarRow(
              item: sidebarItem[3],
            ),
            SizedBox(
              height: 32,
            ),
            Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Logout',
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
