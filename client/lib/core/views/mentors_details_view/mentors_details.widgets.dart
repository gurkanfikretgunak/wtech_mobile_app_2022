import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/button/custom_button_libary.dart';
import 'package:client/core/views/mentors_details_view/widgets/mentor_detail_stats_widget.dart';
import 'package:client/core/views/mentors_details_view/widgets/mentors_detail_bottom_sheet_widget.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class MentorDetailsWidgets {
  Widget body(BuildContext context) {
    List<Map<String, String?>> mentor = [
      {
        'title': L10n.of(context)?.mentorDetailAboutTitle,
        'desc':
            'Futurist, mobil dönüşüm uzmanı, yatırımcı, uygulamacı, konuşmacı, teknoloji markalaşma ve pazarlama uzmanı olan Zehra Öney 1964 yılında İstanbul’da doğdu, İstanbul Üniversitesi’nde Ekonomi eğitimi aldıktan sonra 10 yıl boyunca Turizm sektöründe Türkiye’nin sayılı acentelerinde üst düzey pozisyonlarda görev aldı. Son 16 yılda ise Telekomünikasyon, Mobil ve Dijital alanlarda profesyonel yönetici olarak kariyerine devam etti. 2002 – 2007 yılları arasında Turkcell’de Uluslararası İş Geliştirme, Avrupa Birliği ve Amerika İlişkilerinde Yönetici olarak görev yapan Zehra Öney, 2007 – 2011 yılları arasında Mobilera A.Ş. Genel Müdürlüğü ile Mobilera BV Genel Müdür Yardımcılığı görevlerini eşzamanlı olarak yürüttü.'
      },
      {
        'title': L10n.of(context)?.mentorDetailExpertTitle,
        'desc': 'Uygulama Geliştirme, Mobil Dönüşüm, Pazarlama'
      }
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: context.verticalPaddingNormal * 2,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: Image.asset(Assets.images.mentor1.path).image,
            ),
          ),
          const MentorDetailStatsWidget(viewCount: '1328', appliedCount: '80'),
          const Divider(thickness: 2),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ExpansionTile(
                title: Text(mentor[index]['title'] ?? ''),
                childrenPadding: context.horizontalPaddingNormal,
                children: [
                  Text(mentor[index]['desc'] ?? ''),
                ],
              );
            },
            itemCount: mentor.length,
          ),
        ],
      ),
    );
  }

  Widget appBarTitle(BuildContext context, String mentorName) {
    return Text(mentorName, style: Theme.of(context).textTheme.headline6);
  }

  Widget floatingActionButton(BuildContext context) {
    return Container(
      padding: context.horizontalPaddingHigh,
      width: context.width,
      child: CustomElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            context: context,
            isScrollControlled: true,
            builder: (context) => const MentorsDetailBottomSheetWidget(),
          );
        },
        text: L10n.of(context)?.mentorDetailContactUs ?? '',
        textColor: ColorConstant.instance.white,
      ),
    );
  }
}
