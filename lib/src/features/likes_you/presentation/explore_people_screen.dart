import 'package:flutter/material.dart';
import 'package:sarang/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:sarang/src/common_widgets/explore_people_button_widget.dart';
import 'package:sarang/src/common_widgets/match_card_widget.dart';
import 'package:sarang/src/features/authentication/data/data_user_account_local.dart';
import 'package:sarang/src/features/authentication/domain/user_account.dart';
import 'package:sarang/src/theme_manager/values_manager.dart';

class ExplorePeopleScreen extends StatefulWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {
  UserAccount? account;

  getDataUserAccount() async {
    final data = await DataUserAccountLocal.getDataUserAccountFromStorage();
    final result = UserAccount.fromMap(data);
    account = result;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDataUserAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p40,
          horizontal: AppPadding.p24,
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(
              imagePath: account?.imageProfile,
            ),
            const SizedBox(
              height: AppSize.s50,
            ),
            Expanded(
              child: Column(
                children: const [
                  Expanded(
                    child: MatchCardWidget(),
                  ),
                  SizedBox(
                    height: AppSize.s50,
                  ),
                  ExplorePeopleButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}