import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/observe_breathing_patterns_screen.dart';
import 'package:bah_easy_cpr/page/patient_recovery_position_screen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindingUnconsciousPersonScreen extends StatelessWidget {
  static const routeName = "FindingUnconsciousPersonScreen";

  const FindingUnconsciousPersonScreen({super.key});

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
                'พบคนหมดสติอยู่ตรงหน้า',
                style: AppStyle.txtHeader20Blod.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              Text(
                'รู้สึกตัว?',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              BaseButton(
                buttonType: ButtonType.secondary,
                width: 150.w,
                txtColor: AppColor.themePrimaryColor,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    PatientRecoveryPositionScreen.routeName,
                  );
                },
                text: 'รู้สึกตัว',
              ),
              SizedBox(
                height: 8.h,
              ),
              BaseButton(
                width: 150.w,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    ObserveBreathingPatternsScreen.routeName,
                  );
                },
                text: 'ไม่รู้สึกตัว',
              ),
            ],
          ),
        );
      },
    );
  }
}
