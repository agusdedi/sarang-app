import 'package:flutter/material.dart';
import 'package:sarang/src/theme_manager/color_manager.dart';
import 'package:sarang/src/theme_manager/style_manager.dart';
import 'package:sarang/src/theme_manager/values_manager.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.lableName,
    required this.hintext,
    required this.controller,
    this.isObsecure = false,
  });

  final String lableName;
  final String hintext;
  final bool isObsecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lableName, 
          style: getWhiteTextStyle(),
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: getWhiteTextStyle(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppPadding.p15,
              horizontal: AppPadding.p30,
            ),
            filled: true,
            fillColor: ColorManager.secondary,
            hintText: hintext,
            hintStyle: getBlack30TextStyle(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s50),
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.s14,
        ),
      ],
    );
  }
}