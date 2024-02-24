
import 'package:flutter/material.dart';
import 'package:sarang/src/features/authentication/presentation/sign_up_age_job_screen.dart';
import 'package:sarang/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:sarang/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:sarang/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:sarang/src/features/likes_you/presentation/people_loved_screen.dart';

import 'theme_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: getApplicationThemeData(),
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName :(context) => const SignUpScreen(),
        SignUpAgeJobScreen.routeName :(context) => const SignUpAgeJobScreen(),
        SignUpUploadPhotoScreen.routeName :(context) => const SignUpUploadPhotoScreen(),
        ExplorePeopleScreen.routeName :(context) => const ExplorePeopleScreen(),
        PeopleLovedScreen.routeName :(context) => const PeopleLovedScreen(),
      },
    );
  }
}