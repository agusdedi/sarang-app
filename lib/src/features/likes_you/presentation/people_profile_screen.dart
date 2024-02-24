import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/custom_button_widget.dart';
import 'package:sarang/src/common_widgets/people_identity_widget.dart';
import 'package:sarang/src/common_widgets/profile_detail_image_widget.dart';
import 'package:sarang/src/theme_manager/asset_image_icon_manager.dart';
import 'package:sarang/src/theme_manager/values_manager.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = '/people-profile';
  const PeopleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileDetailImageWidget(),
          const SizedBox(
            height: AppSize.s30,
          ),
          const PeopleIdentityWidget(),

          Container(
            height: 80.0,
            margin: const EdgeInsets.only(
              left: AppMargin.m24,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 120.0,
                  height: 80.0,
                  margin: const EdgeInsets.only(
                    right: AppMargin.m16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppSize.s18
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        '${AssetImageIconManager.assetPath}/hobby1_image.png',
                      ),
                    ),
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
          const SizedBox(
            height: AppSize.s40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p24,
            ),
            child: CustomButtonWidget(
              title: 'Chat Now', 
              onTap: () {
                
              },
            ),
          ),
          const SizedBox(
            height: AppSize.s50,
          ),
        ],
      ),
    );
  }
}
