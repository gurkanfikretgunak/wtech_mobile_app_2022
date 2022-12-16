import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/views/home_view/home.view.dart';
import 'package:client/core/views/onboarding_view/widgets/dot_indicator.dart';
import 'package:client/core/views/onboarding_view/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                      demo_data.length,
                      (index) => Padding(
                            padding: EdgeInsets.all(10),
                            child: DotIndicator(isActive: index == _pageIndex),
                          )),
                  const Spacer(),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeView()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.instance.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22))),
                        child: Text('Skip'),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;
  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: 'assets/education.gif',
    title: 'Sana Uygun Eğitimi Beraber Bulalım!',
    description:
        '100 Eğitmen ve Kurumdan 30 Farklı Sertifikalı Kursa Ücretsiz Erişim! Kariyer ve öğrenim hayatınızı bir sonraki seviyeye taşıyın.',
  ),
  Onboard(
    image: 'assets/mentor.gif',
    title: 'Birlikte Güçlüyüz',
    description:
        'Türkiye’nin teknolojide lider kurumlarından ve üniversitelerinden farklı alanlardaki danışmanlar ve mentorler, Wtech Platform’da senin yanında!',
  ),
  Onboard(
    image: 'assets/events.gif',
    title: 'İşimiz İnsan, İşimiz Teknoloji',
    description:
        'Yetenekler ve kurumların bir araya gelebilmeleri için gerekli köprüyü kuruyoruz. Teknolojide fark yaratmak için doğru yerdesin!',
  ),
];
