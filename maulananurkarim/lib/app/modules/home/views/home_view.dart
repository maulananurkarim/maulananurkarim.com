import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../services/app_url_launcher_service.dart';
import '../../../utils/app_utils.dart';
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

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GetBuilder<HomeController>(
          builder: (controller) {
            return Container(
              width: 100.0,
              height: 100.0,
              padding: const EdgeInsets.all(AppDimensions.paddingSizeExtraSmall),
              decoration: BoxDecoration(
                color: AppColors.lightFillColor,
                borderRadius: BorderRadius.circular(100.0),
                border: Border.all(
                  color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  "data:image/jpeg;base64,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",
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
        const SizedBox(width: AppDimensions.paddingSizeDefault),
        GetBuilder<HomeController>(
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Maulana Nurkarim",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppDimensions.fontSizeOverLarge,
                    color: controller.isDarkMode ? AppColors.lightColor : AppColors.darkColor,
                  ),
                ),
                Text(
                  "Mobile Application Developer",
                  style: TextStyle(
                    color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
                  ),
                ),
                const SizedBox(height: AppDimensions.paddingSizeDefault),
                GetBuilder<HomeController>(
                  builder: (controller) {
                    return Row(
                      children: [
                        IconButton(
                          onPressed: () => AppUrlLauncherService.launchURL("https://www.linkedin.com/in/maulananurkarim/"),
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () => AppUrlLauncherService.launchURL("https://github.com/maulananurkarim"),
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () => AppUrlLauncherService.launchURL("https://www.instagram.com/maulananurkarim/"),
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () => AppUrlLauncherService.launchURL("https://wa.me/6285157672011"),
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            color: controller.isDarkMode ? AppColors.darkGreyColor : AppColors.lightGreyColor,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
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
