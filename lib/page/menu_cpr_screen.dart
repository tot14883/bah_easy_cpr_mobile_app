import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/checking_area_safty_screen.dart';
import 'package:bah_easy_cpr/page/cpr_solution_screen.dart';
import 'package:bah_easy_cpr/page/instruction_aed_screen.dart';
import 'package:bah_easy_cpr/page/patient_recovery_position_screen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuCprScreen extends StatelessWidget {
  static const routeName = "MenuCprScreen";

  const MenuCprScreen({super.key});

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
                'ผู้ป่วยรู้สึกตัว/หายใจได้เอง',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
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
                text: 'กด',
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'เครื่อง AED พร้อมใช้งาน',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              BaseButton(
                width: 150.w,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    InstructionAedScreen.routeName,
                  );
                },
                text: 'กด',
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'มีคนมาเปลี่ยน CPR',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              BaseButton(
                buttonType: ButtonType.secondary,
                width: 150.w,
                txtColor: AppColor.themePrimaryColor,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    CprSolutionScreen.routeName,
                  );
                },
                text: 'กด',
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'รอบตัวไม่ปลอดภัย',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              BaseButton(
                width: 150.w,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    CheckingAreaSaftyScreen.routeName,
                  );
                },
                text: 'กด',
              ),
            ],
          ),
        );
      },
    );
  }
}
