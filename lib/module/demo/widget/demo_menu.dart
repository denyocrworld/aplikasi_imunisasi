// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DemoMenu extends StatelessWidget {
  const DemoMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      List<Map<String, dynamic>> menuList = [
        {
          'label': 'Dashboard',
          'icon': Icons.dashboard,
          'color': Colors.blue,
        },
        {
          'label': 'Order',
          'icon': Icons.shopping_cart,
          'color': Colors.green,
        },
        {
          'label': 'Table',
          'icon': Icons.table_chart,
          'color': Colors.orange,
        },
        {
          'label': 'Product',
          'icon': Icons.shop,
          'color': Colors.red,
        },
        {
          'label': 'Chat',
          'icon': Icons.chat,
          'color': Colors.purple,
        },
        {
          'label': 'Setting',
          'icon': Icons.settings,
          'color': Colors.teal,
        },
        {
          'label': 'Notification',
          'icon': Icons.notifications,
          'color': Colors.yellow,
        },
        {
          'label': 'Lainnya',
          'icon': Icons.more_horiz,
          'color': Colors.grey,
        },
      ];
      return GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: 4,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        itemCount: menuList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = menuList[index];
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item["icon"],
                  size: 32.0,
                  color: item["color"],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  item["label"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: item["color"],
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
