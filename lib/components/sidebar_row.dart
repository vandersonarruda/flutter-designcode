import 'package:designcode_app/constants.dart';
import 'package:designcode_app/model/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarRow extends StatelessWidget {
  final SidebarItem item;

  SidebarRow({@required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: item.icon,
          width: 42,
          height: 42,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: item.background,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          item.title,
          style: kCalloutLabelStyle,
        ),
      ],
    );
  }
}
