import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileWidget extends StatelessWidget {
  final String txt;

  const ListTileWidget({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '\u2022',
          style: AppStyle.txtHeader18Semi,
        ),
        SizedBox(
          width: 4.w,
        ),
        Expanded(
          child: Text(
            txt,
            style: AppStyle.txtHeader18Semi.copyWith(
              color: AppColor.themeBlackColor,
            ),
          ),
        ),
      ],
    );
  }
}
