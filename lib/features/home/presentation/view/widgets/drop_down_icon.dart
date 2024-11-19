import 'package:cancer/core/helper/shared_prefs.dart';
import 'package:cancer/core/helper/snake_bar.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/welcome/presentation/view/wlcome_view.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownIcon extends StatefulWidget {
  const DropDownIcon({super.key});

  @override
  State<DropDownIcon> createState() => _DropDownIconState();
}

class _DropDownIconState extends State<DropDownIcon> {
  @override
  Widget build(BuildContext context) {
    final MenuItem fistItem = MenuItem(
        text: 'Settings',
        icon: Icons.settings,
        onTap: () {
          customSnakeBar(context, text: 'This feature will be available soon');
        });
    final MenuItem secondItem = MenuItem(
        text: 'Log Out',
        icon: Icons.logout,
        onTap: () {
          SharedPrefs.prefs!.setBool('isLogin', false);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const WelcomeView()));
        });
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        onChanged: (value) {},
        customButton: const Icon(
          Icons.more_vert_outlined,
          color: AppColors.primary,
        ),
        items: [
          ...MenuItems.firstItems.map(
            (item) => DropdownMenuItem<MenuItem>(
              value: fistItem,
              child: MenuItems.buildItem(fistItem),
            ),
          ),
          const DropdownMenuItem<Divider>(enabled: false, child: SizedBox()),
          ...MenuItems.secondItems.map(
            (item) => DropdownMenuItem<MenuItem>(
              value: secondItem,
              child: MenuItems.buildItem(secondItem),
            ),
          ),
        ],
        dropdownStyleData: DropdownStyleData(
          width: 160,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: AppColors.primary,
          ),
          offset: const Offset(0, 8),
        ),
        menuItemStyleData: MenuItemStyleData(
          customHeights: [
            ...List<double>.filled(MenuItems.firstItems.length, 48),
            8,
            ...List<double>.filled(MenuItems.secondItems.length, 48),
          ],
          padding: const EdgeInsets.only(left: 16, right: 16),
        ),
      ),
    );
  }

  List<MenuItem> firstItems = [];
  List<MenuItem> secondItems = [];
}

class MenuItem {
  const MenuItem({
    required this.text,
    required this.icon,
    required this.onTap,
  });

  final String text;
  final IconData icon;
  final Function onTap;
}

abstract class MenuItems {
  static List<MenuItem> firstItems = [settings];
  static List<MenuItem> secondItems = [logout];

  static final settings =
      MenuItem(text: 'Settings', icon: Icons.settings, onTap: () {});
  static final logout = MenuItem(
      text: 'Log Out',
      icon: Icons.logout,
      onTap: () {
        SharedPrefs.prefs!.setBool('isLogin', false);
        // Navigator.pushReplacement(context, MaterialPageRoute(builder: builder));
      });

  static Widget buildItem(MenuItem item) {
    return InkWell(
      onTap: () {
        item.onTap();
      },
      child: Row(
        children: [
          Icon(item.icon, color: Colors.white, size: 22),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              item.text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
