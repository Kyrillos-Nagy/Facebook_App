import 'package:facebook_ui/core/utils/app_assets.dart';
import 'package:facebook_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage(AppImages.rouetLogo),
          ),
          title: const Text(
            "Route",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.black,
              fontWeight: .w500,
            ),
          ),
          subtitle: const Row(
            spacing: 2,
            children: [
              Text(
                '8h',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.grey,
                  fontWeight: .w500,
                ),
              ),
              Icon(Icons.public, color: AppColors.grey, size: 12),
            ],
          ),
          trailing: const Icon(Icons.more_horiz, color: AppColors.grey),
        ),
        Image.asset(AppImages.route),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Image.asset(AppIcons.like)),
            IconButton(onPressed: () {}, icon: Image.asset(AppIcons.comment)),
            IconButton(onPressed: () {}, icon: Image.asset(AppIcons.share)),
            const Spacer(),
            IconButton(onPressed: () {}, icon: Image.asset(AppIcons.save)),
          ],
        ),
      ],
    );
  }
}
