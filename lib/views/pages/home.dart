import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/views/widgets/home/for_you.dart';
import 'package:hanime_app/views/widgets/shared/app_bar.dart';
import 'package:hanime_app/views/widgets/shared/bottom_navigation_bar.dart';
import 'package:hanime_app/views/widgets/shared/drawer.dart';
import 'package:hanime_app/views/widgets/home/recently_watch.dart';
import 'package:motion_toast/motion_toast.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey =
      GlobalKey<CurvedNavigationBarState>();
  DateTime? currentBackPressTime;

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
      body: PopScope(
        canPop: false, // Izinkan navigasi kembali secara default
        onPopInvoked: (didPop) async {
          if (!didPop) {
            DateTime now = DateTime.now();
            if (currentBackPressTime == null ||
                now.difference(currentBackPressTime!) >
                    const Duration(seconds: 2)) {
              currentBackPressTime = now;
              MotionToast.error(
                animationDuration: Duration.zero,
                description: const Text("Tekan Sekali lagi untuk keluar"),
                toastDuration: const Duration(seconds: 2),
                displaySideBar: false,
                borderRadius: 10,
              ).show(context);
            } else {
              SystemNavigator.pop();
            }
          }
        },

        child: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              RecentlyWatch(),
              SizedBox(height: 30),
              ForYou(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HanimeBottomNavigationBar(
        bottomNavigationKey: _bottomNavigationKey,
        index: 0,
      ),
    );
  }
}