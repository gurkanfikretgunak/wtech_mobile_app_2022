import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/events_view/events_image.dart';
import 'package:flutter/material.dart';


// Gri rengi constantlara ekle
class EventsDetail extends StatelessWidget {
  const EventsDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: EventsImage(),
        ),
        Padding(
          padding: context.paddingOnlyTop * 1.5,
          child: Text(
            'İstanbul Teknolojide Lider Kadınlar Eğitim Programı',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding: context.paddingOnlyTop * 2,
          child: Text(
            'Wtech Akademi',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ColorConstant.instance.blue),
          ),
        ),
        Padding(
          padding: context.paddingBodyVertical * 2,
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
