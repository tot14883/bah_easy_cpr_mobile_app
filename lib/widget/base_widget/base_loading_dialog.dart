import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:flutter/material.dart';

// implement this one as dialog
// showBaseDialog(
//               context: context,
//               builder: (ctx) {
//                 return const LoadingDialogModal();
//               },
//             );

class LoadingDialogModal extends StatefulWidget {
  final Color backdropColor;

  const LoadingDialogModal({
    super.key,
    this.backdropColor = Colors.transparent,
  });

  static Widget asyncLoading({
    Color? backdropColor,
    bool? isLoading,
  }) {
    return isLoading == false
        ? const SizedBox(
            height: 0,
            width: 0,
          )
        : LoadingDialogModal(
            backdropColor: backdropColor ?? AppColor.themeGrayCloudColor.withOpacity(0.5),
          );
  }

  @override
  _LoadingDialogModalState createState() => _LoadingDialogModalState();
}

class _LoadingDialogModalState extends State<LoadingDialogModal> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      // ignore: deprecated_member_use
      child: WillPopScope(
        onWillPop: () async => false,
        child: AbsorbPointer(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            color: widget.backdropColor,
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

// Dialog
mixin BaseLoadingDialog {
  Future<T?> showBaseLoadingDialog<T>({
    required BuildContext context,
    bool barrierDismissible = true,
  }) {
    return showDialog(
      context: context,
      useSafeArea: false,
      barrierColor: AppColor.themeGrayCloudColor.withOpacity(0.4),
      barrierDismissible: barrierDismissible,
      builder: (_) => const AlertDialog(
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: LoadingDialogModal(
          backdropColor: Colors.transparent,
        ),
      ),
    );
  }
}
