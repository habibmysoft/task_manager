import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/utils/assets.dart';
import 'package:task_management/views/widgets/gradient_scaffold.dart';
import '../view_models/dashboard_model.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(dashboardViewModelProvider);
    final screens = ref.watch(dashboardViewModelProvider.notifier).screens;

    return gradientScaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: bottomNav(ref, selectedIndex),
      extendBody: true
    );
    // return Scaffold(
    //   extendBody: true,
    //   body: screens[selectedIndex],
    //   bottomNavigationBar: bottomNav(ref, selectedIndex),
    // );
  }

  Widget bottomNav(WidgetRef ref, int selectedIndex) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(141),
      ),
      height: 68,
      width: double.infinity,
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(
            isSelected: selectedIndex == 0,
            icon: selectedIndex == 0 ? Assets.homePurple : Assets.homeGrey,
            onTap:
                () => ref
                    .read(dashboardViewModelProvider.notifier)
                    .setSelectedIndex(0),
          ),
          navItem(
            isSelected: selectedIndex == 1,
            icon: selectedIndex == 1 ? Assets.taskPurple : Assets.taskGrey,
            onTap:
                () => ref
                    .read(dashboardViewModelProvider.notifier)
                    .setSelectedIndex(1),
          ),
          navItem(
            isSelected: selectedIndex == 2,
            icon: selectedIndex == 2 ? Assets.allTaskPurple : Assets.allTaskGrey,
            onTap:
                () => ref
                    .read(dashboardViewModelProvider.notifier)
                    .setSelectedIndex(2),
          ),
        ],
      ),
    );
  }

  Widget navItem({
    required bool isSelected,
    required String icon,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding:
              isSelected
                  ? EdgeInsets.symmetric(horizontal: 41, vertical: 18)
                  : null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(118),
            color: isSelected ? white0F : whiteColor,
          ),
          child: Image.asset(icon, height: 24, width: 24, )
          // child: Icon(
          //   icon,
          //   size: 24,
          //   color: isSelected ? purple61 : grey93,
          // ),
        ),
      ),
    );
  }
}
