import 'package:facebook_ui/core/utils/app_assets.dart';
import 'package:facebook_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WhatInYourMind extends StatelessWidget {
  const WhatInYourMind({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        spacing: 8,
        children: [
          const CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage(AppImages.worldCup),
          ),
          const Expanded(
            child: Text(
              "What's in your mind?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: .w500,
                color: AppColors.grey,
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Image.asset(AppIcons.gallery)),
        ],
      ),
    );
  }
}
