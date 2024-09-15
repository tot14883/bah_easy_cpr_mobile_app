import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/page/rescue_breath_screen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_button.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_consumer_state.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class RhythmicCprScreen extends ConsumerStatefulWidget {
  static const routeName = "RhythmicCprScreen";

  const RhythmicCprScreen({super.key});

  @override
  _RhythmicCprScreenState createState() => _RhythmicCprScreenState();
}

class _RhythmicCprScreenState extends BaseConsumerState<RhythmicCprScreen> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(Assets.videos.rhythmicCprVideo)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isPlaying = controller.value.isPlaying;

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
                BaseButton(
                  width: 150.w,
                  onTap: () async {
                    if (isPlaying) {
                      await controller.pause();
                      await controller.seekTo(Duration.zero);

                      // ignore: use_build_context_synchronously
                      Navigator.of(context).pushNamed(
                        RescueBreathScreen.routeName,
                      );
                    } else {
                      controller
                        ..play()
                        ..setLooping(true);
                    }
                    setState(() {});
                  },
                  text: isPlaying ? 'หยุด CPR' : 'เริ่ม  CPR',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
