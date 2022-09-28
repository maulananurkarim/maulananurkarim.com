import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_utils.dart';
import '../controllers/home_controller.dart';

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
