import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ObserveBreathingPatternsScreen extends StatelessWidget {
  static const routeName = "ObserveBreathingPatternsScreen";

  const ObserveBreathingPatternsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      bodyBuilder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.icons.icThreeDot.svg(),
                  Assets.icons.icThreeDot.svg(),
                ],
              ),
              Text(
                'สังเกตุลักษณะการหายใจ',
                style: AppStyle.txtHeader20Blod.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              Text(
                'หายใจปกติ?',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              BaseButton(
                buttonType: ButtonType.secondary,
                width: 150.w,
                txtColor: AppColor.themePrimaryColor,
                onTap: () {},
                text: 'ปกติ',
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'ไม่หายใจ/หายใจเฮือก',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              BaseButton(
                width: 150.w,
                onTap: () {},
                text: 'ผิดปกติ',
              ),
            ],
          ),
        );
      },
    );
  }
}
