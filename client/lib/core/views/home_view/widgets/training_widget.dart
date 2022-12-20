import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/routes/custom_navigator.dart';
import 'package:client/core/views/home_view/home.widgets.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/enums/routes.enum.dart';

class HomeTrainingWidget extends StatelessWidget {
  const HomeTrainingWidget({super.key, required this.trainingImage});
  final String trainingImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: GestureDetector(
        onTap: () {
          CustomNavigator.goToScreen(context, Routes.educationDetail.name);
        },
        child: Card(
          elevation: 5,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Stack(
              children: [
                Image.asset(trainingImage,
                    fit: BoxFit.fill, width: context.width),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: HomeViewWidget.textProperty(
                      context, "Teknolojide Kadın Derneği Eğitim"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
