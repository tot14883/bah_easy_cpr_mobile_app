import 'package:bah_easy_cpr/widget/privacy/list_tile_privacy_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewInfoWidget extends StatelessWidget {
  final List<String> list;

  const CustomListViewInfoWidget({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTilePrivacyWidget(txt: list[index]);
      },
      separatorBuilder: (_, __) => SizedBox(
        height: 2.h,
      ),
      itemCount: list.length,
    );
  }
}
