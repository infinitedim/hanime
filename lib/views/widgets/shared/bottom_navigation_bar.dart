import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hanime_app/routes/routes.dart';

class HanimeBottomNavigationBar extends StatelessWidget {
  const HanimeBottomNavigationBar({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItems =
        <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.houseChimney,
        ),
        label: 'home',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.compass,
        ),
        label: 'explore',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.bookmark,
        ),
        label: 'favourite',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.user,
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
