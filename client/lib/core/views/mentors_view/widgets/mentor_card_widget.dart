import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MentorCardWidget extends StatelessWidget {
  final String? mentor;
  final String? imageUrl;
  final String? organization;
  final String? role;

  const MentorCardWidget({
    Key? key,
    required this.mentor,
    required this.imageUrl,
    required this.organization,
    required this.role,
  }) : super(key: key);
// 'https://avatars.githubusercontent.com/u/68864968?v=4'
// 'Zehra Öney'
// 'Teknolojide Kadın Derneği'
// 'Yönetim Kurulu Başkanı'
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            height: 300,
            child: Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: 320,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(color: Colors.black12),
                    ),
                    child: Image.asset(
                      imageUrl ?? '',
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 38,
                  child: SizedBox(
                    height: 150,
                    width: 250,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Colors.black12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(mentor ?? '', style: Theme.of(context).textTheme.headline5),
                          Padding(
                            padding: context.paddingBodyVertical,
                            child: Text(organization ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: ColorConstant.instance.blue)),
                          ),
                          Text(role ?? '',
                              style:
                                  Theme.of(context).textTheme.subtitle1!.copyWith(color: ColorConstant.instance.grey)),
                          CustomElevatedButton(onPressed: () {}, text: 'İletişim')
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                      decoration: BoxDecoration(
                        color: ColorConstant.instance.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorConstant.instance.grey.withOpacity(0.3)),
                      ),
                      child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
