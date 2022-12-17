import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';

class MentorDetailStatsWidget extends StatelessWidget {
  final String viewCount;
  final String appliedCount;

  const MentorDetailStatsWidget({
    Key? key,
    required this.viewCount,
    required this.appliedCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              const Icon(Icons.remove_red_eye),
              Text('$viewCount ${L10n.of(context)?.mentorDetailViewText ?? ''}'),
            ],
          ),
          const VerticalDivider(thickness: 2),
          Row(
            children: [
              const Icon(Icons.task_outlined),
              Text("$appliedCount ${L10n.of(context)?.mentorDetailAppliedText ?? ''}"),
            ],
          ),
        ],
      ),
    );
  }
}
