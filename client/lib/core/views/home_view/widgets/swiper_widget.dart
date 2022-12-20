import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';
import '../temporary_contants.dart/text_constants.dart';
import 'package:card_swiper/card_swiper.dart';

class EventSwiperWidget extends StatelessWidget {
  const EventSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              HomeTextContants.eventPath[index],
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: HomeTextContants.eventPath.length,
        pagination: const SwiperPagination(),
      ),
    );
  }
}
