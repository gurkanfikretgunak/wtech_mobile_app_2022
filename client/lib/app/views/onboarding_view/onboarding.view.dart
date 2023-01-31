import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/common/widgets/button/custom_button_elevated.dart';
import 'package:client/app/views/onboarding_view/widgets/dot_indicator.dart';
import 'package:client/app/views/onboarding_view/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:client/core/utils/extensions/common_extension.dart';

import '../../../gen/assets.gen.dart';
import '../../../core/utils/constants/enums/routes.enum.dart';
import '../../routes/custom_navigator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
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
                  CustomElevatedButton(
                    buttonColor: ColorConstant.instance.yellow,
                    width: context.dynamicWidth(0.25),
                    borderRadius: 30,
                    onPressed: () {
                      CustomNavigator.goToScreen(context, Routes.home.name);
                    },
                    text: 'Skip',
                  )
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
