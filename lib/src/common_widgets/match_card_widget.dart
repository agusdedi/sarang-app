import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/glass_card_widget.dart';
import 'package:sarang/src/features/likes_you/domain/user.dart';
import 'package:sarang/src/theme_manager/color_manager.dart';
import 'package:sarang/src/theme_manager/values_manager.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                user.imagePath,
              ),
            ),
            border: Border.all(
              width: 10.0,
              color: ColorManager.secondary,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            borderRadius: BorderRadius.circular(AppSize.s70),
          ),
        ),
        ClassCardWidget(
          user: user,
        ),
      ],
    );
  }
}
