import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/menu_cpr_screen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:bah_easy_cpr/widget/list_tile_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProcessingCprScreen extends StatelessWidget {
  static const routeName = "ProcessingCprScreen";

  const ProcessingCprScreen({super.key});

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
                      text: 'CPR ',
                      style: AppStyle.txtHeader20Blod.copyWith(
                        color: AppColor.themeAlertColor,
                      ),
                    ),
                    TextSpan(
                      text: 'ตามจังหวะ',
                      style: AppStyle.txtHeader20Blod.copyWith(
                        color: AppColor.themeSecondColor,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'อย่าหยุด CPR ยกเว้น',
                style: AppStyle.txtHeader18Semi.copyWith(
                  color: AppColor.themeAlertColor,
                ),
              ),
              const ListTileWidget(
                txt: 'ผู้ป่วยตื่น/หายใจได้เอง',
              ),
              const ListTileWidget(
                txt: 'เครื่อง AED พร้อมใช้งาน',
              ),
              const ListTileWidget(
                txt: 'มีคนมาเปลี่ยน CPR',
              ),
              const ListTileWidget(
                txt: 'รอบตัวไม่ปลอดภัย',
              ),
              const ListTileWidget(
                txt: 'คุณหมดแรงที่จะทำต่อ',
              ),
              SizedBox(
                height: 8.h,
              ),
              BaseButton(
                width: 150.w,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    MenuCprScreen.routeName,
                  );
                },
                text: 'หยุด  CPR',
              ),
            ],
          ),
        );
      },
    );
  }
}
