import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';

import '../views/home_flow/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // Current selected index

  // List of widgets to display for each tab
  final List<Widget> _children = [
    HomeScreen(),
    BookingTab(),
    InvoicesTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: AppColors.buttonsColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.home, height: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.boolings, height: 20),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.inb, height: 25),
            label: 'Invoices',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.profile, height: 25),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class BookingTab extends StatelessWidget {
  const BookingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Booking Tab'),
    );
  }
}

// Invoices Tab Widget
class InvoicesTab extends StatelessWidget {
  const InvoicesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Invoices Tab'),
    );
  }
}

// Profile Tab Widget
class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Tab'),
    );
  }
}
