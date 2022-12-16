import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingExtension(context).horizontalPaddingNormal,
      child: Container(
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/education_1.png"),
                Padding(
                  padding: PaddingExtension(context).paddingNormal,
                  child: const Text("Flutter & Dart Bootcamp 22'",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding: PaddingExtension(context).paddingNormal,
                  child: const Text(
                      "Sizleri front-end geliştirme dünyasında sektörün yeni lideri Flutter Geliştiricisi...",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ),
                Padding(
                  padding: PaddingExtension(context).paddingNormal,
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemSize: context.dynamicWidth(0.08),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: ColorConstant.instance.yellow,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const Text("(0)"),
                    ],
                  ),
                ),
                Padding(
                  padding: PaddingExtension(context).paddingNormal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        child: Text(L10n.of(context)!.educationButton),
                        onPressed: () {},
                      ),
                      IconButton(onPressed: () async {}, icon: const Icon(Icons.favorite_border)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
