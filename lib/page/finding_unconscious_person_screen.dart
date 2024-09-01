import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/observe_breathing_patterns_screen.dart';
import 'package:bah_easy_cpr/page/patient_recovery_position_screen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_consumer_state.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class FindingUnconsciousPersonScreen extends ConsumerStatefulWidget {
  static const routeName = "FindingUnconsciousPersonScreen";

  const FindingUnconsciousPersonScreen({super.key});

  @override
  _FindingUnconsciousPersonScreenState createState() => _FindingUnconsciousPersonScreenState();
}

class _FindingUnconsciousPersonScreenState extends BaseConsumerState<FindingUnconsciousPersonScreen> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(Assets.videos.findingUnconsciousVideo)
      ..initialize().then((_) {
        setState(() {});

        controller
          ..play()
          ..setLooping(true);
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      bodyBuilder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24).r,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
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
                  textAlign: TextAlign.center,
                  style: AppStyle.txtHeader20Blod.copyWith(
                    color: AppColor.themeSecondColor,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                if (controller.value.isInitialized) ...[
                  AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
                ],
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'รู้สึกตัว?',
                  textAlign: TextAlign.center,
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
                  onTap: () async {
                    await controller.pause();
                    await controller.seekTo(Duration.zero);
                    // ignore: use_build_context_synchronously
                    final result = await Navigator.of(context).pushNamed<bool>(
                      PatientRecoveryPositionScreen.routeName,
                    );

                    if (result!) {
                      await controller.play();
                    }
                  },
                  text: 'รู้สึกตัว',
                ),
                SizedBox(
                  height: 8.h,
                ),
                BaseButton(
                  width: 150.w,
                  onTap: () async {
                    await controller.pause();
                    await controller.seekTo(Duration.zero);
                    // ignore: use_build_context_synchronously
                    final result = await Navigator.of(context).pushNamed<bool>(
                      ObserveBreathingPatternsScreen.routeName,
                    );

                    if (result!) {
                      await controller.play();
                    }
                  },
                  text: 'ไม่รู้สึกตัว',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
