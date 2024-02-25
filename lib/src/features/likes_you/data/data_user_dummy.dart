import 'package:sarang/src/features/likes_you/domain/user.dart';
import 'package:sarang/src/theme_manager/asset_image_icon_manager.dart';

List<User> dataUserDummy = [
  User(
    fullName: 'Yunita',
    age: 22,
    occupation: 'Teacher',
    description:
        'Improve economy of the world by teaching students how to manage money and invest to the greater good in these luxury.',
    imagePath: '${AssetImageIconManager.assetPath}/people_love1_image.png',
  ),
  User(
    fullName: 'Rimadona',
    age: 24,
    occupation: 'Doctor',
    description:
        'Helping people life is really fun for me and I really wanted to cure the world from all of the disease that we currently have.',
    imagePath: '${AssetImageIconManager.assetPath}/people_love2_image.png',
  ),
  User(
    fullName: 'Aninda',
    age: 21,
    occupation: 'Entrepeneur',
    description:
        'Helping people life is really fun for me and I really wanted to cure the world from all of the disease that we currently have.',
    imagePath: '${AssetImageIconManager.assetPath}/people_love3_image.png',
  ),
];