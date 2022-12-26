import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/text/custom_text.dart';

class EventsDateAndLocation extends StatelessWidget {
  const EventsDateAndLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
            maxLines: 4,
            'İstanbul Teknolojide Lider Kadınlar Eğitim Programı ',
            fontSize: 18,
            color: Theme.of(context).cardColor),
        Padding(
          padding: context.onlyTopPaddingNormal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: Theme.of(context).cardColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.025),
                    child: CustomText(
                      'İstanbul',
                      color: ColorConstant.instance.grey,
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.07),
                  child: const CustomDateText(date: '27.06.2022'))
            ],
          ),
        )
      ],
    );
  }
}
