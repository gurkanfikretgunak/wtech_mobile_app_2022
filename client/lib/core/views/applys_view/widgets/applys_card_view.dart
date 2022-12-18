import 'package:flutter/material.dart';

class ApplysCardViewListView extends StatelessWidget {
  const ApplysCardViewListView({
    super.key,
    required this.applysCardType,
  });

  final Widget applysCardType;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return applysCardType;
      },
    );
  }
}
