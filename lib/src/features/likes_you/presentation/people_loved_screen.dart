import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/people_loved_card_widget.dart';
import 'package:sarang/src/theme_manager/font_manager.dart';
import 'package:sarang/src/theme_manager/style_manager.dart';
import 'package:sarang/src/theme_manager/values_manager.dart';

class PeopleLovedScreen extends StatelessWidget {
  static const String routeName = '/people-loved';
  const PeopleLovedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'People You\nLoved',
          textAlign: TextAlign.center,
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semiBold,
            fontSize: FontSizeManager.f20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              
            }, 
            icon: const Icon(
              Icons.search,
              size: AppSize.s30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: AppSize.s50,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const PeopleLovedCardWidget();
              },
              itemCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}