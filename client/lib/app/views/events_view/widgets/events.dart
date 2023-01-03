import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/app/views/events_detail_view/widgets/base_main_sheet.dart';
import 'package:client/app/views/events_view/events_image.dart';
import 'package:client/app/views/events_view/widgets/events_description.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: InkWell(
        onTap: () {
          _navigateEventDetails(context);
        },
        child: Card(
          color: ColorConstant.instance.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 6,
                child: EventsImage(),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width * 0.025),
                  child: const EventsDescription(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateEventDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) {
        return const BaseMainSheet();
      },
    );
  }
}
