import 'package:url_launcher/url_launcher.dart';

class AppUrlLauncherService {
  static void launchURL(
    String scheme,
    String path,
  ) async {
    final Uri launchUri = Uri(
      scheme: scheme,
      path: path,
    );
    if (!await launchUrl(launchUri)) throw 'Could not launch $path';
  }
}
