import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/processing_cpr_screen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RescueBreathScreen extends StatelessWidget {
  static const routeName = "RescueBreathScreen";

  const RescueBreathScreen({super.key});

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
                'ให้การช่วยหายใจ 2 ครั้ง',
                style: AppStyle.txtHeader20Blod.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'ถ้าคุณรู้สึกไม่สบายใจสามารถข้ามขั้นตอนนี้ได้',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeSecondColor,
                ),
              ),
              BaseButton(
                width: 150.w,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    ProcessingCprScreen.routeName,
                  );
                },
                text: 'ถัดไป',
              ),
            ],
          ),
        );
      },
    );
  }
}
