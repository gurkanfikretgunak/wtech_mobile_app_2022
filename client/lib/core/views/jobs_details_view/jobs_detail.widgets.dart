import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/jobs_details_view/widgets/jobs_detail_widget.dart';
import 'package:flutter/material.dart';

class JobsDetailWidgets {
  PreferredSizeWidget appbar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.jobAndinternship,
      isCheck: false,
      isName: false,
    );
  }

  Widget body(BuildContext context) {
    return const JobsDetailWidget(
      jobDetailTitle: "2021 Turkey Discover Young Talent Programı",
      jobInstitution: "Wtech",
      jobApplyTime: "10.11.2022",
      jobQualification:
          "Kariyerinin oturumunu Logo'da aç!Kariyerine, yazılım sektörünün yenilikçi ve lider ekibiyle dinamik bir başlangıç yapmak istersen seni log-in olmaya davet ediyoruz.Son Başvuru Tarihi: 11 Mart 2022, Saat 15:00Yazılım bölümü için online teknik test: 11-13 Mart saat 23.59'a kadar. ",
      jobPositionInfo: '',
      jobCriteria:
          "Lisans  (3. / 4. sınıf) veya önlisans (son sınıf) programlarında eğitimine devam ediyorsan,Uzaktan çalışırken iyi bir ekip arkadaşıysan,Yeni teknolojilleri öğrenmeye meraklı,Agile metodolojileriyle çalışmaya hevesli,Kendini geliştirmek için istekli ve proaktifsen başvurunu bekliyoruz.",
      jobImage:
          'https://storagewtech.blob.core.windows.net/files/posts/posts_banner_352_16454782206214014c33d2a.jpeg',
    );
  }
}
