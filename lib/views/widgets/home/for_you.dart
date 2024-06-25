import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hanime_app/size_config.dart';

class ForYou extends GetView {
  const ForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'for_you'.tr.capitalizeFirst!,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontSize:
                      Theme.of(context).textTheme.headlineMedium?.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.arrowRight,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight / 3,
            width: SizeConfig.screenWidth,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/kagurabachi_poster.jpeg',
                            height: SizeConfig.screenHeight / 4,
                            width: SizeConfig.screenWidth - 100,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Kagurabachi'),
                        Text(
                          'Episode ${index + 1}',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            fontSize:
                                Theme.of(context).textTheme.bodySmall?.fontSize,
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
