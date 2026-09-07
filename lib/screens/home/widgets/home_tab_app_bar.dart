import 'package:facebook_ui/core/utils/app_assets.dart';
import 'package:facebook_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeTabAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTabAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      centerTitle: false,
      title: const Text(
        'Facebook',
        style: TextStyle(
          fontSize: 30,
          fontWeight: .w800,
          color: AppColors.blue,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(AppIcons.add),
            color: AppColors.black,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(AppIcons.search),
            color: AppColors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(AppIcons.messenger),
            color: AppColors.black,
          ),
        ),
      ],
      bottom: TabBar(
        labelColor: AppColors.blue,
        unselectedLabelColor: AppColors.grey,
        indicatorColor: AppColors.blue,
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: AppColors.grey,
        tabs: <Widget>[
          Tab(icon: ImageIcon(AssetImage(AppIcons.home))),
          Tab(icon: ImageIcon(AssetImage(AppIcons.reels))),
          Tab(icon: ImageIcon(AssetImage(AppIcons.market))),
          Tab(icon: ImageIcon(AssetImage(AppIcons.profile))),
          Tab(icon: ImageIcon(AssetImage(AppIcons.notifications))),
          Tab(
            icon: CircleAvatar(backgroundImage: AssetImage(AppImages.worldCup)),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(96);
}
