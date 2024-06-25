import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HanimeAppBar extends GetView {
  const HanimeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(
        'Hanime',
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const FaIcon(
              FontAwesomeIcons.bars,
            ),
            color: Theme.of(context).colorScheme.primary,
          );
        },
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
          ),
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
