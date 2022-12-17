import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/text/text_library.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_image.dart';
import '../about.widgets.dart';

class AboutDetailView extends StatelessWidget with AboutWidgets {
  const AboutDetailView({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomImage(
              assetPath: imagePath,
              height: context.dynamicHeight(0.3),
            ),
            Padding(
              padding: context.paddingMedium,
              child: const CustomText(
                  "Derneğimiz, 2000li yılların başından beri teknoloji sektöründe özellikle üretimde, araştırma geliştirmede, dijital ve mobil pazarlama, yapay zeka, artırılmış gerçeklik, büyük veri, makine öğrenmesi gibi alanlarda profesyonel yönetici ve girişimci olarak çalışan Zehra Öney tarafından 31 Ocak 2019 tarihinde aynı hedefte ilerleme niyetiyle katılan 75 kurucu kurumsal üye ile birlikte kuruldu. HP Türkiye, Denizbank, Tempo Çağrı Merkezi, Vodafone Türkiye, Microsoft, Gittigidiyor, Akbank, Arçelik, Limak Holding, Yemeksepeti, UiPath, EnerjiSA, Pegasus, Migros, Adcolony ve Baker&McKenzie gibi kurumların yer aldığı kurumsal üye listemize ulaşabilmek için tıklayınız.Zehra Öney, ajansı 360+ Media Interactive Technologies ile teknoloji alanında yapmış olduğu tüm çalışmalar ve tecrübesiyle derneğin bu alanda insana ve özellikle kadınlara yapacağı yatırımların büyütülmesi, teknik uzmanlık alanlarında daha vasıflı insan kaynağının yetiştirilmesi, kadınların bu alanda rol model söz sahibi olacak şekilde var olabilmeleri açısından önemli bir vizyon ortaya koymuş ve Türkiye’de bir ilk olan derneğimizin Kurucu Yönetim Kurulu Başkanı olarak seçilmiştir. Öney, Derneğimizin kuruluşunun ön çalışmalarını 2017 yılında başlatmış, Wtech Platform’u hayata geçirerek burada derneğin yapacağı çalışmalarla ilgili geri bildirimler toplamış ve Türkiye’deki lokal ve çok uluslu firmalar ile görüşüp bu konudaki fikirlerini alarak kuruluşu bu firmalarla hayata geçirmiş ve onların da bu hedefe katılım yapmalarını sağlamıştır.Derneğimiz kurulurken ana amaç olarak merkeze bilim ve teknoloji alanlarında eksik olan alanında uzman insan ihtiyacını kapatmak, uzmanlık eğitimlerine yatırım yapıp yetişmiş birey sayısını artırmak, Türkiye’yi teknoloji konusunda güçlü bir şekilde, küresel rekabette avantajlı bir ülke haline getirmek; böylece Türkiye’nin refah gücünü arttırmak hedefleri konulmuştur. Derneğimiz, kuruluş sonrası kısa süre içerisinde 150’yi aşkın üye sayısına ulaştı ve start-up seviyesindeki birçok derneğe kıyasla hızlı, odaklı ve disiplinli çalışma prensibi ile başarılı projelere imza atmaya başladı."),
            ),
          ],
        ),
      ),
    );
  }
}
