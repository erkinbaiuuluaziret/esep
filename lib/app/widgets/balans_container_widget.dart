import 'package:flutter/material.dart';

import '../theme/colors/app_colors.dart';
import '../theme/textStyle/text_stayle.dart';

class BalansContainerWidget extends StatelessWidget {
  final String title;
  final String balans;
  const BalansContainerWidget(
      {Key? key, required this.title, required this.balans})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: AppColors.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: TextStyles.textStyle2,
          ),
          SizedBox(height: 10),
          Text(
            balans,
            style: TextStyles.textStyle3,
          ),
        ]),
      ),
    );
  }
}
