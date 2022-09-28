import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/app_url_launcher_service.dart';
import '../../../utils/app_utils.dart';
import '../controllers/home_controller.dart';

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
