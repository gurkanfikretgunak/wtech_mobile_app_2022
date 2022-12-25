import 'dart:ui';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_textfield.dart';
import 'package:client/core/views/home_view/temporary_contants.dart/text_constants.dart';
import 'package:client/core/views/home_view/widgets/categories_widget.dart';
import 'package:client/core/views/home_view/widgets/swiper_widget.dart';
import 'package:client/core/views/home_view/widgets/training_widget.dart';
import 'package:flutter/material.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';

class HomeViewWidget {
  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.videos,
      isCheck: false,
      isName: false,
    );
  }

  static Widget homeCardWidget(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: HomeTextContants.trainingPath.length,
      itemBuilder: (context, index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: HomeTrainingWidget(trainingImage: HomeTextContants.trainingPath[index]),
        );
      },
    );
  }

  static Widget textProperty(BuildContext context, text) {
    return ClipRRect(
      child: BackdropFilter(
        filter: _filterImage(),
        child: Column(
          children: [
            Container(
              color: ColorConstant.instance.shinyWhite.withOpacity(0.1),
              height: context.dynamicHeight(0.03),
              child: Center(
                child: Text(text,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
            ),
            Padding(
                padding: context.horizontalPaddingLow,
                child: Row(children: [
                  const Icon(Icons.event_outlined, size: 15),
                  Text(HomeTextContants.dateText,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: ColorConstant.instance.black.withOpacity(0.7), fontSize: 14))
                ]))
          ],
        ),
      ),
    );
  }

  static Widget searchHomeWidget(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: CustomTextFormField(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: const Icon(Icons.tune_outlined),
        labelText: L10n.of(context)!.search,
        isSearch: true,
      ),
    );
  }

  Padding homePageWidget(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: Wrap(
        runSpacing: 5,
        children: [
          HomeViewWidget.searchHomeWidget(context),
          context.emptySizedHeightBoxLow,
          SizedBox(
            height: context.dynamicHeight(0.29),
            width: context.width,
            child: const EventSwiperWidget(),
          ),
          Text(L10n.of(context)!.categories, style: Theme.of(context).textTheme.headline6),
          SizedBox(height: context.dynamicHeight(0.098), width: context.width, child: const CategoriesWidget()),
          Text(L10n.of(context)!.currentTraining, style: Theme.of(context).textTheme.headline6),
          SizedBox(height: context.dynamicHeight(0.2), child: homeCardWidget(context)),
        ],
      ),
    );
  }
}

ImageFilter _filterImage() => ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0);
