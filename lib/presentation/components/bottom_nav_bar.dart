import 'package:flutter/material.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/booking_home_screen.dart';
import 'package:projectcore/presentation/views/payment/payment_screen.dart';
import 'package:projectcore/presentation/views/profile/profile_screen.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/localization/language_constrants.dart';

import '../views/home_flow/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // Current selected index

  // List of widgets to display for each tab
  final List<Widget> _children = [
    HomeScreen(),
    BookingHomeScreen(),
    PaymentScreen(),
    ProfileScreen(),
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
            label: getTranslated('home', context),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.boolings, height: 20),
            label: getTranslated('booking', context),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.inb, height: 25),
            label: getTranslated('invoices', context),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.profile, height: 25),
            label: getTranslated('profile', context),
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
