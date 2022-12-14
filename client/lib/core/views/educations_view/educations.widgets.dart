import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EducationsWidgets {
  
  Widget educationCard(BuildContext context, double height, double width) {
    return Padding(
      padding: PaddingExtension(context).paddingBodyHorizontal,
      child: Container(
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/education_1.png"),
                Padding(
                  padding: PaddingExtension(context).paddingAll,
                  child: Text("Flutter & Dart Bootcamp 22'",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding: PaddingExtension(context).paddingAll,
                  child: Text(
                      "Sizleri front-end geliştirme dünyasında sektörün yeni lideri Flutter Geliştiricisi...",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ),
                Padding(
                  padding: PaddingExtension(context).paddingAll,
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemSize: width / 15,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: ColorConstant.instance.yellow,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text("(0)"),
                    ],
                  ),
                ),
                Padding(
                  padding: PaddingExtension(context).paddingAll,
                  child: Row(
                    children: [
                      ElevatedButton(
                        child: Text(L10n.of(context)!.educationButton),
                        onPressed: () {},
                      ),
                      IconButton(
                          onPressed: () async {
                            
                          }, icon: Icon(Icons.favorite_border)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }

  Widget searchBar(BuildContext context, double height, double width) {
    return Container(
      height: height / 15,
      width: width,
      decoration: BoxDecoration(
        color: ColorConstant.instance.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.instance.black,
            offset: Offset(0.0, 0.0),
            blurRadius: 1.0,
          ),
        ],
        //border: Border.all()
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Container(
              width: width / 1.2,
              height: height / 30,
              decoration: BoxDecoration(
                color: ColorConstant.instance.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomTextFormField(
                prefixIcon: Icons.search,
                labelText: L10n.of(context)!.search,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
