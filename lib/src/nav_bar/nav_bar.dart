import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:texa1_app/src/home/view/home_page.dart';
import 'package:texa1_app/src/profile/view/profile_page.dart';
import 'package:texa1_app/src/projects/view/projects_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final _screens = const [HomePage(), ProjectsPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: colors.surfaceContainerLowest),
        child: SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          selectedItemColor: colors.primary,
          unselectedItemColor: colors.onSurfaceVariant,
          items: [
            SalomonBottomBarItem(
              icon: SvgPicture.asset('lib/assets/icons/home_unactive.svg'),
              title: Text(context.t.home.title),
              selectedColor: colors.primary,
              activeIcon: SvgPicture.asset('lib/assets/icons/home_active.svg'),
            ),
            SalomonBottomBarItem(
              icon: SvgPicture.asset('lib/assets/icons/bag_unactive.svg'),
              title: Text(context.t.projects.title),
              selectedColor: colors.primary,
              activeIcon: SvgPicture.asset('lib/assets/icons/bag_active.svg'),
            ),
            SalomonBottomBarItem(
              icon: SvgPicture.asset('lib/assets/icons/person_unactive.svg'),
              title: Text(context.t.profile.title),
              selectedColor: colors.primary,
              activeIcon: SvgPicture.asset(
                'lib/assets/icons/person_active.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
