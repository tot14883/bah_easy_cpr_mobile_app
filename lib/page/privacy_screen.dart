import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/checking_area_safty_screen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:bah_easy_cpr/widget/custom_list_view_info_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyScreen extends StatelessWidget {
  static const routeName = "PrivacyScreen";

  PrivacyScreen({super.key});

  final privacyList = [
    'แอพพลิเคชั่นนี้จัดทำขึ้นเพื่อเป็นส่วนหนึ่งของงานวิจัยของ รพ ภูมิพลอดุลยเดช พอ. ผู้วิจัยหลัก นพ รชต จองหยิน',
    'ไม่ได้มีวัตถุประสงค์เพื่อนำมาใช้ทางการค้า',
    'ไม่ได้มีวัตถุประสงค์เพื่อจะนำมาทดแทนการฝึกการช่วยชีวิตขั้นพื้นฐาน',
    'การฝึกการช่วยชีวิตขั้นพื้นฐานยังเป็นสิ่งจำเป็นสำหรับประชาชนทั่วไปและบุคลากรทางการแพทย์',
    'อ้างอิงข้อมูลมาจาก ESC guildline 2021(Basic life support)',
  ];

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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Assets.icons.icThreeDot.svg(),
                  Assets.imgs.bhrLogo.image(
                    width: 100.w,
                    height: 150.h,
                  ),
                  Assets.icons.icThreeDot.svg(),
                ],
              ),
              Assets.imgs.namedBanner.image(),
              Text(
                'วัตถุประสงค์',
                style: AppStyle.txtHeader28Blod.copyWith(
                  color: AppColor.themePrimaryColor,
                ),
              ),
              Expanded(
                child: CustomListViewInfoWidget(
                  list: privacyList,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              BaseButton(
                width: 150.w,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    CheckingAreaSaftyScreen.routeName,
                  );
                },
                text: 'ตกลง',
              ),
            ],
          ),
        );
      },
    );
  }
}
