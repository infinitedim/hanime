import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hanime_app/routes/routes.dart';

class HanimeBottomNavigationBar extends StatelessWidget {
  const HanimeBottomNavigationBar({
    super.key,
    required GlobalKey<CurvedNavigationBarState> bottomNavigationKey,
    required this.index,
  }) : _bottomNavigationKey = bottomNavigationKey;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey;
  final int index;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItems =
        <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.houseChimney,
          // color: Theme.of(context).colorScheme.surface,
        ),
        label: 'home',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.compass,
          // color: Theme.of(context).colorScheme.surface,
        ),
        label: 'explore',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.bookmark,
          // color: Theme.of(context).colorScheme.surface,
        ),
        label: 'favourite',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.user,
          // color: Theme.of(context).colorScheme.surface,
        ),
        label: 'profile',
      ),
    ];

    List<String> bottomNavigationBarRoute = [
      home,
      explore,
      saved,
      profile,
    ];

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      key: _bottomNavigationKey,
      items: bottomNavigationBarItems,
      currentIndex: index,
      selectedItemColor: Theme.of(context).colorScheme.surface,
      unselectedItemColor: Theme.of(context).colorScheme.surface,
      onTap: (index) {
        Get.toNamed(bottomNavigationBarRoute[index]);
      },
    );
  }
}
