import 'package:flutter/material.dart';

class RecentlyWatchCardRightSide extends StatelessWidget {
  const RecentlyWatchCardRightSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Kimetsu no Yaiba: Hashira Geiko-hen',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                ),
              ),
              Text(
                'Episode 3',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.w300,
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Author',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodySmall?.color,
              fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
              fontWeight: FontWeight.w100,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '43.48%',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                width: 5,
                height: 5,
              ),
              const SizedBox(width: 5),
              Text(
                '10min left',
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
              )
            ],
          ),
          Divider(
            color: Theme.of(context).canvasColor,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(
                Theme.of(context).colorScheme.primary,
              ),
              shape: const WidgetStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              alignment: Alignment.center,
            ),
            onPressed: () {},
            child: Text(
              'Continue Watching',
              style: TextStyle(
                color: Theme.of(context).colorScheme.surface,
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
