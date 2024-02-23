import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/hero_widget.dart';
import 'package:sarang/src/common_widgets/logo_and_tagline_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LogoAndTaglineWidget(),
        HeroWidget(),
      ],
    );
  }
}
