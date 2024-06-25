import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentlyWatchCardLeftSide extends GetView {
  const RecentlyWatchCardLeftSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Image.asset(
        'assets/demon_slayer_poster.jpeg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
