import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hanime_app/views/widgets/shared/app_bar.dart';
import 'package:hanime_app/views/widgets/shared/bottom_navigation_bar.dart';
import 'package:hanime_app/views/widgets/shared/drawer.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey =
      GlobalKey<CurvedNavigationBarState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size * 0.070,
        child: HanimeAppBar(scaffoldKey: _scaffoldKey),
      ),
      drawer: HanimeDrawer(
        scaffoldKey: _scaffoldKey,
      ),
      onDrawerChanged: (isOpened) {
        isOpened = !isOpened;
      },
      body: const Center(
        child: Text('Saved'),
      ),
      bottomNavigationBar: HanimeBottomNavigationBar(
        bottomNavigationKey: _bottomNavigationKey,
        index: 2,
      ),
    );
  }
}
