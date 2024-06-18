import 'package:flutter/material.dart';
import 'package:hanime_app/views/widgets/home/card/recently_watch_card.dart';

class RecentlyWatch extends StatelessWidget {
  const RecentlyWatch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recently watch',
            style: TextStyle(
              color: Theme.of(context).textTheme.headlineMedium?.color,
              fontSize: Theme.of(context).textTheme.headlineMedium?.fontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          const RecentlyWatchCard(),
        ],
      ),
    );
  }
}
