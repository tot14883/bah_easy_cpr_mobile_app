import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/rhythmic_cpr_screen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CprSolutionScreen extends StatelessWidget {
  static const routeName = "CprSolutionScreen";

  const CprSolutionScreen({super.key});

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
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'วิธีการ ',
                      style: AppStyle.txtHeader20Blod.copyWith(
                        color: AppColor.themeSecondColor,
                      ),
                    ),
                    TextSpan(
                      text: 'CPR!',
                      style: AppStyle.txtHeader20Blod.copyWith(
                        color: AppColor.themeAlertColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              BaseButton(
                width: 150.w,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    RhythmicCprScreen.routeName,
                  );
                },
                text: 'เริ่ม  CPR',
              ),
            ],
          ),
        );
      },
    );
  }
}
