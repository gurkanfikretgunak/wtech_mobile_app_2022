import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/events_detail_view/widgets/events_apply_button.dart';
import 'package:client/core/views/events_view/events_image.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(children: [
            const EventsImage(),
            Positioned(
                right: 0,
                bottom: 10,
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
    );
  }
}
