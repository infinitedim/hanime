import 'package:flutter/material.dart';

class RecentlyWatchCardLeftSide extends StatelessWidget {
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
