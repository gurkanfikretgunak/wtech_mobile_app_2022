import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/educations_view/educations.viewmodel.dart';
import 'package:client/core/views/events_detail_view/widgets/base_main_sheet.dart';
import 'package:client/core/views/events_view/events_image.dart';
import 'package:client/core/views/events_view/widgets/events_description.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../common/widgets/button/custom_button_icon.dart';

class Events extends StatelessWidget {
  const Events({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _vm = GetIt.I.get<EducationsViewModel>();
    bool heart = _vm.heartAnimation();
    return StreamBuilder(
        stream: _vm.heartFill,
        builder: (context, snapshot) {
          return GestureDetector(
            onTap: () {
              _navigateEventDetails(context);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius:
                              const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                          child: Image.asset(Assets.images.jpg.eventFuture.path)),
                      Positioned(
                        left: context.dynamicWidth(0.78),
                        top: context.dynamicHeight(0.005),
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).cardTheme.color,
                          child: CustomIconButton(
                            onPressed: () async {
                              heart = _vm.heartAnimation();
                            },
                            icon: heart ? Icons.favorite : Icons.favorite_border,
                            color: Theme.of(context).backgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.025),
                    child: const EventsDescription(),
                  )
                ],
              ),
            ),
          );
        });
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
