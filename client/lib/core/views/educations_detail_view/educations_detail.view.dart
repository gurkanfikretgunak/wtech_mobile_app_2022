import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_divider.dart';
import 'package:client/core/views/educations_detail_view/educations_detail.viewmodel.dart';
import 'package:client/core/views/educations_detail_view/educations_detail.widgets.dart';
import 'package:client/core/views/educations_detail_view/widgets/expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class EducationsDetailView extends StatelessWidget {
  const EducationsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final vm = GetIt.I.get<EducationsDetailViewModel>();
    //BehaviorSubject<bool> isFavorite = _vm.favorite;

    return StreamBuilder(
      stream: vm.favorite,
      builder: (context, snapshot) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppbar(titleText: L10n.of(context)!.hello, isCheck: true),
            body: SingleChildScrollView(
              child: Padding(
                padding: PaddingExtension(context).paddingNormal,
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(13), child: Image.asset("images/education_1.png")),
                    EducationsDetailWidgets().educationContent(context, screenHeight, screenWidth),
                    const CustomDivider(
                      endIndent: 1,
                    ),
                    const EducationDescription(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: screenWidth / 1.5,
                          height: screenHeight / 20,
                          child: CustomElevatedButton(onPressed: () {}, text: "Başvur"),
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite_border),
                          onPressed: () {
                            vm.changeFavorite();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
