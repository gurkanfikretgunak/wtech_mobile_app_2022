import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/news_view/widgets/news_card.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constans.dart';

class NewsWidgets {
  Widget card({bool? isTitleCard}) {
    //Backend'den geleceği için şimdilik static kullanıyorum
    return NewsCard(
      isTitleCard: isTitleCard,
      date: "27.06.2022",
      title: "Teknolojiyi Egece Dokuyoruz Proje Lansmanı Yapıldı",
      subTitle:
          "Egebimtes ve Teknolojide Kadın Derneği iş birliğinde Egebimtes 30…",
    );
  }

  Widget titleText(BuildContext context) {
    return Padding(
      padding: context.paddingAll,
      child:
          Text("Son Haberler", style: Theme.of(context).textTheme.headline6!),
    );
  }

  Widget cardImage({required String imagePath}) {
    return Image(
      image: AssetImage(imagePath),
      fit: BoxFit.fitHeight,
    );
  }

  Widget cardTitleText(String title, BuildContext context) {
    return Text(title,
        style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 17));
  }

  Widget cardSubTitleText(String subTitle, BuildContext context) {
    return Text(subTitle,
        style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 14));
  }

  Widget dateText({
    required BuildContext context,
    required String date,
    Alignment? alignment,
  }) {
    return Align(
      alignment: alignment ?? Alignment.bottomLeft,
      child: Wrap(
        alignment: WrapAlignment.end,
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          Icon(
            Icons.calendar_month_outlined,
            color: ColorConstant.instance.grey,
            size: 14,
          ),
          Text(date, style: Theme.of(context).textTheme.labelMedium),
        ],
      ),
    );
  }
}
