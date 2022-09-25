import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/routes/app_pages.dart';
import 'app/themes/app_themes.dart';
import 'app/utils/app_title.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        maxWidth: 1440,
        minWidth: 400,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(720, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(1080, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(1600, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(1768, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(2200, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(1440, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(600, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1600, name: TABLET),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1800, name: TABLET),
        ],
        background: Container(color: Colors.transparent),
      ),
      title: AppTitle.title,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.theme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
