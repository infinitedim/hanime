import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hanime_app/views/widgets/home/card/recently_watch_card_left_side.dart';
import 'package:hanime_app/views/widgets/home/card/recently_watch_card_right_side.dart';

class RecentlyWatchCard extends StatelessWidget {
  const RecentlyWatchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RecentlyWatchCardLeftSide(),
          ),
          SizedBox(width: 20),
          Expanded(
            child: RecentlyWatchCardRightSide(),
          )
        ],
      ),
    );
  }
}
