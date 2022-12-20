import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/events_detail_view/widgets/base_bottom_sheet_header.dart';
import 'package:client/core/views/events_detail_view/widgets/events_detail.dart';
import 'package:flutter/material.dart';

class BaseMainSheet extends StatelessWidget {
  const BaseMainSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          const BaseBottomSheetHeader(),
          Expanded(
            child: Padding(
              padding: context.horizontalPaddingMedium,
              child: const EventsDetail(),
            ),
          )
        ],
      ),
    );
  }
}
