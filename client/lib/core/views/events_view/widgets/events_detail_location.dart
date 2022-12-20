import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:flutter/material.dart';

class EventsDateAndLocation extends StatelessWidget {
  const EventsDateAndLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          maxLines: 4,
          'İstanbul Teknolojide Lider Kadınlar Eğitim Programı ',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: context.onlyTopPaddingNormal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on_sharp,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.025),
                    child: const Text('İstanbul'),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.07),
                  child: const CustomDateText(date: '27.06.2022'))
            ],
          ),
        )
      ],
    );
  }
}
