import 'package:flutter/material.dart';

import '../pages/notes_page.dart';
import '../pages/profile_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => UserScreenState();
}

class UserScreenState extends State<UserScreen> {
  final List<Widget> pages = [const HistoryPage(), const ProfilePage()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              haptic: true,
              rippleColor: Colors.grey[300]!,
              hoverColor: Theme.of(context).colorScheme.secondary,
              gap: 8,
              iconSize: 24,
              tabMargin:EdgeInsets.symmetric(horizontal: 8.0),
              mainAxisAlignment:MainAxisAlignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              duration: Duration(milliseconds: 300),
              tabBackgroundColor: Theme.of(context).colorScheme.onSecondary,
               tabs: const [
                GButton(
                  icon: Icons.note,
                  text: 'Записи',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Профиль',
                ),
                
              ],
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
