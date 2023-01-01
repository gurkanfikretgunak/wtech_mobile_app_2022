import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/events_detail_view/widgets/events_apply_button.dart';
import 'package:client/app/views/events_view/events_image.dart';
import 'package:flutter/material.dart';

class EventsDetail extends StatefulWidget {
  const EventsDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<EventsDetail> createState() => _EventsDetailState();
}

class _EventsDetailState extends State<EventsDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Stack(children: [
              const EventsImage(),
              Positioned(
                  right: context.dynamicWidth(0.01),
                  bottom: MediaQuery.of(context).size.height * 0.015,
                  child: EventsApplyButton(
                    onPressed: () {
                      debugPrint('Apply events');
                    },
                  )),
            ]),
          ),
          Padding(
            padding: context.onlyTopPaddingNormal * 1.5,
            child: Text(
              'İstanbul Teknolojide Lider Kadınlar Eğitim Programı',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: context.onlyTopPaddingNormal * 1.5,
            child: Text(
              'Wtech Akademi',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ColorConstant.instance.blue),
            ),
          ),
          Padding(
            padding: context.verticalPaddingNormal * 1.5,
            child: Text(
              'Teknolojide Kadın Derneği olarak organizasyon partneri olduğumuz Teknoloji Buluşmaları’nda her ilde 200 kadına teknoloji okuryazarı olmaları adına vizyon eğitimleri vereceğiz. Vizyon eğitimi alan kadınlar arasından teknoloji konusunda yetenekli olanlara ayrıca online teknik uzmanlık eğitimleri başlatacağız.',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Colors.grey.withOpacity(0.5)),
            ),
          )
        ],
      ),
    );
  }
}
