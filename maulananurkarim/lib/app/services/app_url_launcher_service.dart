import 'package:url_launcher/url_launcher.dart';

class AppUrlLauncherService {
  static Future<void> launchURL(String value) async {
    final Uri url = Uri.parse(value);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
