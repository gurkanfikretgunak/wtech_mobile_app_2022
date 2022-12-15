import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_textfield.dart';
import 'package:client/core/views/educations_view/widgets/education_card.dart';
import 'package:client/core/views/educations_view/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EducationsWidgets {
  
  Widget educationCard(BuildContext context, double height, double width) {
    return CardWidget();
  }

  Widget searchBar(BuildContext context, double height, double width) {
    return SearchBarWidget();
  }
}