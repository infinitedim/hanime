import 'package:flutter/material.dart';
import 'package:hanime_app/views/widgets/shared/app_bar.dart';
import 'package:hanime_app/views/widgets/shared/bottom_navigation_bar.dart';
import 'package:hanime_app/views/widgets/shared/drawer.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size * 0.070,
        child: const HanimeAppBar(),
      ),
      drawer: const HanimeDrawer(),
      onDrawerChanged: (isOpened) {
        isOpened = !isOpened;
      },
      body: const Center(
        child: Text('Saved'),
      ),
      bottomNavigationBar: const HanimeBottomNavigationBar(index: 2),
    );
  }
}
