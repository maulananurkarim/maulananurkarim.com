import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/app_url_launcher_service.dart';
import '../../../utils/app_utils.dart';
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

class CopyRigths extends StatelessWidget {
  const CopyRigths({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Text(
          "© Maulana Nurkarim. 2022 All rigths reserved",
          style: TextStyle(
            color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
          ),
        );
      },
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GetBuilder<HomeController>(
          builder: (controller) {
            return SizedBox(
              height: 45.0,
              width: 160.0,
              child: ElevatedButton.icon(
                onPressed: () => AppUrlLauncherService.launchURL("https://drive.google.com/file/d/17cocSvrjm2eR5EmrZEGuqanBAcuLaMLJ/view?usp=sharing"),
                label: const Text(
                  "Download CV",
                  style: TextStyle(
                    color: AppColors.lightGreyColor,
                  ),
                ),
                icon: const Icon(
                  Icons.download,
                  color: AppColors.lightGreyColor,
                ),
              ),
            );
          },
        ),
        const SizedBox(width: AppDimensions.paddingSizeDefault),
        GetBuilder<HomeController>(
          builder: (controller) {
            return SizedBox(
              height: 45.0,
              width: 160.0,
              child: ElevatedButton(
                onPressed: () => AppUrlLauncherService.launchURL("mailto:maulananurkarim.dev@gmail.com"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(controller.isDarkMode ? AppColors.darkFillColor : AppColors.lightFillColor),
                ),
                child: Text(
                  "Contact me",
                  style: TextStyle(
                    color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          height: 45.0,
          child: ElevatedButton(
            onPressed: () => controller.toggleDarkMode(),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(const CircleBorder()),
              backgroundColor: MaterialStateProperty.all(
                controller.isDarkMode ? AppColors.darkFillColor : AppColors.lightFillColor,
              ),
            ),
            child: Icon(
              controller.isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
              color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
            ),
          ),
        );
      },
    );
  }
}
