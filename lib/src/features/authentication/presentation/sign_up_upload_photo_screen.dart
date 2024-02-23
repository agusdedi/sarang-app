import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/custom_button_widget.dart';
import 'package:sarang/src/common_widgets/custom_text_button_widget.dart';
import 'package:sarang/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:sarang/src/common_widgets/upload_photo_widget.dart';
import 'package:sarang/src/theme_manager/font_manager.dart';
import 'package:sarang/src/theme_manager/style_manager.dart';
import 'package:sarang/src/theme_manager/values_manager.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() => _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LogoAndTaglineWidget(),
              const SizedBox(
                height: AppSize.s50,
              ),
              const UploadPhotoWidget(),
              const SizedBox(
                height: 53.0,
              ),
              Text(
                'Agus Dedi',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f22,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              const SizedBox(
                height: AppSize.s4,
              ),
              Text(
                '22, Programmer', 
                style: getBlack60TextStyle(),
              ),
              const SizedBox(
                height: 240.0,
              ),
              CustomButtonWidget(
                title: 'Update my Profile', 
                onTap: () {
                  
                },
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              CustomTextButtonWidget(
                title: 'Skip for Now', 
                onPressed: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}