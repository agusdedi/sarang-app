import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/custom_button_widget.dart';
import 'package:sarang/src/common_widgets/people_identity_widget.dart';
import 'package:sarang/src/common_widgets/profile_detail_image_widget.dart';
import 'package:sarang/src/features/likes_you/data/data_hobby_dummy.dart';
import 'package:sarang/src/features/likes_you/domain/user.dart';
import 'package:sarang/src/theme_manager/values_manager.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = '/people-profile';
  const PeopleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileDetailImageWidget(
              imagePath: user.imagePath,
            ),
            const SizedBox(
              height: AppSize.s30,
            ),
            PeopleIdentityWidget(
              user: user,
            ),
        
            Container(
              height: 80.0,
              margin: const EdgeInsets.only(
                left: AppMargin.m24,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final hobby = dataHobbyDummy[index];
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
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          hobby,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: dataHobbyDummy.length,
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
      ),
    );
  }
}
