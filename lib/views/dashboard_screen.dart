import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'all_task_screen.dart';
import 'home_screen.dart';
import 'create_task_screen.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    CreateTaskScreen(),
    AllTasksScreen(),
  ];

    _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens[_selectedIndex],
      bottomNavigationBar: bottomNav(),
    );
  }

  Widget bottomNav() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(141),
      ),
      height: 68,
      width: double.infinity,
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(isSelected: _selectedIndex == 0 , icon: Icons.home, onTap: () => _onItemTapped(0)),
          navItem(isSelected: _selectedIndex == 1 , icon: Icons.task, onTap: () => _onItemTapped(1)),
          navItem(isSelected: _selectedIndex == 2 , icon: Icons.calendar_month, onTap: () => _onItemTapped(2)),
        ],
      ),
    );
  }

  Widget navItem({
    required bool isSelected,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: isSelected ? EdgeInsets.symmetric(horizontal: 41, vertical: 18) : null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(118),
            color: isSelected ? Color(0xFFF0F2F8) : Color(0xFFFFFFFF),
          ),
          child: Icon(icon, size: 24, color: isSelected ? Color(0xFF613BE7) : Color(0xFF93989D)),
        ),
      ),
    );
  }
}
