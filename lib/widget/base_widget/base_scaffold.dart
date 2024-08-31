// ignore_for_file: deprecated_member_use

import 'package:bah_easy_cpr/core/loader/loader_controller.dart';
import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/generated/assets.gen.dart';
import 'package:bah_easy_cpr/widget/base_widget/base_loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseScaffold extends ConsumerWidget {
  final Widget Function(BuildContext, BoxConstraints) bodyBuilder;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final PreferredSizeWidget? appBar;
  final bool extendBodyBehindAppBar;
  final bool resizeToAvoidBottomInset;
  final Color? bgColor;
  final bool isSafeBottom;
  final bool isSafeTop;
  final bool hasAppBar;
  final bool isAppearBottomBarWhenKeyboardShowing;
  final bool isWillPop;
  final Widget? floatingActionButton;

  const BaseScaffold({
    super.key,
    required this.bodyBuilder,
    this.bgColor,
    this.appBar,
    this.extendBodyBehindAppBar = false,
    this.resizeToAvoidBottomInset = true,
    this.isSafeBottom = true,
    this.isSafeTop = true,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.hasAppBar = false,
    this.isAppearBottomBarWhenKeyboardShowing = false,
    this.isWillPop = true,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      loaderControllerProvider.select(
        (value) => value,
      ),
    );

    return Stack(
      children: [
        WillPopScope(
          onWillPop: () async => isWillPop,
          child: Scaffold(
            bottomNavigationBar: Padding(
              padding: isAppearBottomBarWhenKeyboardShowing ? MediaQuery.of(context).viewInsets.w : EdgeInsets.zero,
              child: bottomNavigationBar,
            ),
            body: Stack(
              children: [
                Assets.imgs.background.image(),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    // for remove primary focus and trigger the keyboard to dismiss.
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: SafeArea(
                    bottom: isSafeBottom,
                    top: isSafeTop,
                    child: LayoutBuilder(
                      builder: bodyBuilder,
                    ),
                  ),
                ),
              ],
            ),
            appBar: appBar,
            backgroundColor: bgColor ?? AppColor.themeWhiteColor,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            bottomSheet: bottomSheet,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
          ),
        ),
        if (isLoading)
          LoadingDialogModal.asyncLoading(
            isLoading: isLoading,
          ),
      ],
    );
  }
}
