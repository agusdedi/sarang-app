import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/match_button_widget.dart';
import 'package:sarang/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:sarang/src/theme_manager/font_manager.dart';
import 'package:sarang/src/theme_manager/style_manager.dart';
import 'package:sarang/src/theme_manager/values_manager.dart';

class ProfileDetailImageWidget extends StatelessWidget {
  const ProfileDetailImageWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 420.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imagePath,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p50,
            horizontal: AppPadding.p26,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchButtonWidget(
                dimension: 30.0,
                iconPath: 'icon_arrow_left.png', 
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                'Lover Profile\nDetails',
                textAlign: TextAlign.center,
                style: getWhiteTextStyle(
                  fontWeight: FontWeightManager.semiBold,
                  fontSize: FontSizeManager.f20,
                ),
              ),
              MatchButtonWidget(
                dimension: 30.0,
                iconPath: 'icon_close_circle.png', 
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context, 
                    ExplorePeopleScreen.routeName, 
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}