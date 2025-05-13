import 'package:flutter/material.dart';

class PopupMenuItemTile extends StatelessWidget {
  const PopupMenuItemTile(
      {super.key, required this.menuItem, required this.textColor});

  final ({String title, IconData icon, bool isDanger}) menuItem;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Text(
            menuItem.title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: textColor),
          ),
          const Spacer(),
          Icon(
            menuItem.icon,
            size: 20,
            color: textColor,
          )
        ],
      ),
    );
  }
}
