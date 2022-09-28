import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_utils.dart';
import '../components/action_button.dart';
import '../components/change_theme_button.dart';
import '../components/copy_rigths.dart';
import '../components/personal_info.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: AppDimensions.paddingSizeExtraLarge),
          ChangeThemeButton(),
          SizedBox(height: AppDimensions.paddingSizeExtraLarge),
          PersonalInfo(),
          SizedBox(height: AppDimensions.paddingSizeExtraLarge),
          ActionButton(),
          Spacer(),
          CopyRigths(),
          SizedBox(height: AppDimensions.paddingSizeExtraLarge),
        ],
      ),
    );
  }
}
