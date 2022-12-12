import 'package:client/core/views/home_view/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomeViewWidget {
  Widget cardWidget(BuildContext context, bool? isCheck) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.77,
          child: CardWidget(isCheck: isCheck),
        );
      },
    );
  }
}
