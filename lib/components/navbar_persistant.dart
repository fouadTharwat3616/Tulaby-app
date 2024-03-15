import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tolaby_app/screens/settings.dart';
import 'package:tolaby_app/components/test.dart';
import 'package:tolaby_app/screens/attendance.dart';
import 'package:tolaby_app/screens/home.dart';
import 'package:tolaby_app/screens/report_attendance.dart';
import 'package:tolaby_app/screens/profile.dart';

class Nav_bar extends StatefulWidget {
  // final Widget child;
  // const Nav_bar({
  //   Key? key,
  //   required this.child,
  // }) : super(key: key);

  @override
  State<Nav_bar> createState() => _Nav_barState();
}

class _Nav_barState extends State<Nav_bar> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);
    List<Widget> _buildScreens() {
      return [
        Home(),
      Attendance(),
        // Report_attendance(),
        Profile(),
        Settings()
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          contentPadding: 2,
          icon: Icon(
            color: Theme.of(context).primaryColor,
            Icons.home,
            size: 30,
          ),
          title: ("Home"),
          textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          activeColorPrimary: Theme.of(context).primaryColor,
        ),
        PersistentBottomNavBarItem(
          contentPadding: 2,
          icon: Icon(
            color: Theme.of(context).primaryColor,
            Icons.checklist_sharp,
            size: 30,
          ),
          title: ("Attendace"),
          textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
           
          activeColorPrimary: Theme.of(context).primaryColor,
        
        ),
        // PersistentBottomNavBarItem(
        //   contentPadding: 2,
        //   icon: Icon(
        //     color: Theme.of(context).primaryColor,
        //     CupertinoIcons.chart_bar_circle,
        //     size: 30,
        //   ),
        //   title: ("Reports"),
        //   textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //   // activeColorPrimary: CupertinoColors.activeBlue,
        //   activeColorPrimary: const Color(0xFF2661FA),
        //   inactiveColorPrimary: const Color(0xFF2661FA),
        // ),
        PersistentBottomNavBarItem(
          contentPadding: 2,
          icon: Icon(
            color: Theme.of(context).primaryColor,
            CupertinoIcons.profile_circled,
            size: 30,
          ),
          title: ("Profile"),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          activeColorPrimary: Theme.of(context).primaryColor,
        ),
        PersistentBottomNavBarItem(
          contentPadding: 2,
          icon: Icon(
        
            color: Theme.of(context).primaryColor,
            CupertinoIcons.settings_solid,
            size: 30,
          ),
          title: ("settings"),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          activeColorPrimary: Theme.of(context).primaryColor,
        ),
      ];
    }

    return Scaffold(
      body: PersistentTabView(
        context,
        screens: _buildScreens(),
        controller: _controller,
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: false,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
      ),
    );
  }
}
