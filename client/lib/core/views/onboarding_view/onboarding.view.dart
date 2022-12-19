import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/custom_button_elevated.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/home_view/home.view.dart';
import 'package:client/core/views/onboarding_view/widgets/dot_indicator.dart';
import 'package:client/core/views/onboarding_view/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:client/core/extensions/extension.dart';

import '../../../gen/assets.gen.dart';

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
          padding: context.paddingNormal,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: demoDataFunction(context).length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                    image: demoDataFunction(context)[index].image,
                    title: demoDataFunction(context)[index].title,
                    description: demoDataFunction(context)[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                      demoDataFunction(context).length,
                      (index) => Padding(
                            padding: context.paddingNormal,
                            child: DotIndicator(isActive: index == _pageIndex),
                          )),
                  const Spacer(),

                  CustomElevatedButton(onPressed: () {}, text: 'Skip')
                  // SizedBox(
                  //   height: context.dynamicHeight(0.08),
                  //   width: context.dynamicWidth(0.17),
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => HomeView()),
                  //       );
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //         backgroundColor: ColorConstant.instance.yellow,
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(30))),
                  //     child: const CustomText('Skip'),
                  //   ),
                  // ),
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
  final String image;
  final String title;
  final String description;
  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<Onboard> demoDataFunction(BuildContext context) => [
      Onboard(
        image: Assets.gif.education.path,
        //'assets/gif/education.gif',
        title: L10n.of(context)!.titleEducation,
        description: L10n.of(context)!.descriptionEducation,
      ),
      Onboard(
        image: Assets.gif.mentor.path,
        title: L10n.of(context)!.titleMentor,
        description: L10n.of(context)!.descriptionMentor,
      ),
      Onboard(
        image: Assets.gif.events.path,
        title: L10n.of(context)!.titleEvents,
        description: L10n.of(context)!.descriptionEvents,
      ),
    ];
