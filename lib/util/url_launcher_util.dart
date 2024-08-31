import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherUtil {
  UrlLauncherUtil._();

  static Future<bool> launchUrl(String tel) async {
    return await launchUrlString('tel://$tel');
  }
}
