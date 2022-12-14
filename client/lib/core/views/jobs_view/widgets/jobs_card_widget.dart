import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class JobsCardWidget extends StatefulWidget {
  final String? imageUrl;
  final String? applyTime;
  final String? role;
  final int? showNo;
  final String? institution;
  const JobsCardWidget(
      {Key? key,
      required this.imageUrl,
      required this.role,
      required this.applyTime,
      required this.showNo,
      required this.institution})
      : super(key: key);

  @override
  State<JobsCardWidget> createState() => _JobsCardWidgetState();
}

class _JobsCardWidgetState extends State<JobsCardWidget> {
  bool isLiked = false;
  bool isContinue = true;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            SizedBox(
              height: 270,
              width: 250,
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: Colors.black12),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 110,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          widget.imageUrl ?? '',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: ColorConstant.instance.black,
                                  ),
                                  Text(widget.applyTime!),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(widget.showNo.toString()),
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: ColorConstant.instance.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  widget.role!,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  widget.institution!,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 5,
              child: SizedBox(
                height: 40,
                width: 80,
                child: Card(
                  color: ColorConstant.instance.yellow,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Colors.black12),
                  ),
                  child: Center(
                    child: Text(
                      L10n.of(context)!.internship,
                      style: TextStyle(
                          color: ColorConstant.instance.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 215,
                left: 10,
                child: CustomElevatedButton(
                  onPressed: () {
                    setState(() {
                      isContinue = !isContinue;
                    });
                  },
                  //onPressed: isContinue ? () {} : null,
                  text: (isContinue == false)
                      ? L10n.of(context)!.terminatedButton
                      : L10n.of(context)!.applyButton,
                )),
            Positioned(
                top: 215,
                right: 20,
                child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: ColorConstant.instance.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: ColorConstant.instance.grey.withOpacity(0.3)),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      icon: Icon((isLiked == false)
                          ? Icons.favorite_border
                          : Icons.favorite),
                    ))),
          ],
        ),
      ],
    );
  }
}
