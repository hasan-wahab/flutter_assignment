import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  late Widget leadingIcon1;
  late Widget leadingIcon2;
  late Widget actionIcon;

  CustomAppBar({
    super.key,
    required this.leadingIcon1,
    required this.leadingIcon2,
    required this.actionIcon,
  });

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: leadingIcon1),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: leadingIcon2),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 6),
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Padding(padding: const EdgeInsets.only(right: 20), child: actionIcon)
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 66);
}

