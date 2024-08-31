import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/cpr_follow_instruction_screen.dart';
import 'package:bah_easy_cpr/util/url_launcher_util.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientRecoveryPositionScreen extends StatelessWidget {
  static const routeName = "PatientRecoveryPositionScreen";

  const PatientRecoveryPositionScreen({super.key});

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
                'จัดผู้ป่วยในท่าพักฟื้น',
                style: AppStyle.txtHeader20Blod.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              Text(
                'ขอความช่วยเหลือ',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              BaseButton(
                buttonType: ButtonType.secondary,
                width: 150.w,
                txtColor: AppColor.themePrimaryColor,
                onTap: () async {
                  await UrlLauncherUtil.launchUrl('1669');
                },
                text: 'โทร 1669',
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'ผู้ป่วยไม่หายใจ',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              BaseButton(
                width: 150.w,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    CprFollowInstructionScreen.routeName,
                  );
                },
                text: 'เริ่ม CPR',
              ),
            ],
          ),
        );
      },
    );
  }
}
