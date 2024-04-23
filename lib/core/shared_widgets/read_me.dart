import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:space_explorer_test/core/theme/color_app.dart';
import 'package:space_explorer_test/core/theme/styles.dart';


class ReadMeTextWidget extends StatelessWidget {
  const ReadMeTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ReadMoreText(
        text,
        trimLines: 8,
        colorClickableText: ColorApp.pinkColor,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show More',
        trimExpandedText: 'Show Less',
        moreStyle: Styles.nunitoFont15.copyWith(color: ColorApp.pinkColor),
        lessStyle: Styles.nunitoFont15.copyWith(color: ColorApp.pinkColor),
        style:
            Styles.nunitoFont18Regular.copyWith(color: ColorApp.whiteColor),
      ),
    );
  }
}
