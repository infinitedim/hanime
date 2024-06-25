import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hanime_app/size_config.dart';
import 'package:hanime_app/views/widgets/home/for_you.dart';
import 'package:hanime_app/views/widgets/shared/app_bar.dart';
import 'package:hanime_app/views/widgets/shared/bottom_navigation_bar.dart';
import 'package:hanime_app/views/widgets/shared/drawer.dart';
import 'package:hanime_app/views/widgets/home/recently_watch.dart';

class Home extends GetView {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size * 0.070,
        child: const HanimeAppBar(),
      ),
      drawer: const HanimeDrawer(),
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
              Fluttertoast.showToast(
                msg: 'pressToExit'.tr.capitalizeFirst!,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0,
              );
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
      bottomNavigationBar: const HanimeBottomNavigationBar(index: 0),
    );
  }
}
