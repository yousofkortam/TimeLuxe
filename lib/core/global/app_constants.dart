import 'package:flutter/material.dart';
import 'package:time_luxe/core/global/app_assets.dart';

import '../../features/bag/bag_screen.dart';
import '../../features/home/presentation/widgets/home_body.dart';
import '../../features/profile/profile_screen.dart';
import '../../features/search/presentation/widgets/search_view_body.dart';
import '../models/watch_model.dart';

abstract class AppConstants {
  static List<Widget> body = const <Widget>[
    HomeBody(),
    SearchViewBody(),
    BagScreen(),
    ProfileScreen(),
  ];

  static List<WatchModel> trendingProducts = <WatchModel>[
    WatchModel(
      id: 1,
      name: "Lady Datejust",
      imageUrl: AppAssets.ladyDateJust,
      price: 177.5,
      description:
          "The Lady-Datejust comes in a wealth of versions to perfectly reflect the different personalities of its wearers. The range of materials and colours of the Lady-Datejust is equalled only by the variety of bracelets and dials that add to its style.",
    ),
    WatchModel(
      id: 2,
      name: "1908",
      imageUrl: AppAssets.product1908,
      price: 195.8,
      description:
          "The Lady-Datejust comes in a wealth of versions to perfectly reflect the different personalities of its wearers. The range of materials and colours of the Lady-Datejust is equalled only by the variety of bracelets and dials that add to its style.",
    ),
    WatchModel(
      id: 3,
      name: "Yatch Master",
      imageUrl: AppAssets.yachtMaster,
      price: 188.7,
      description:
          "The Lady-Datejust comes in a wealth of versions to perfectly reflect the different personalities of its wearers. The range of materials and colours of the Lady-Datejust is equalled only by the variety of bracelets and dials that add to its style.",
    ),
  ];
}
