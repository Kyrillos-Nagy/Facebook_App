import 'package:facebook_ui/core/utils/app_colors.dart';
import 'package:facebook_ui/screens/home/widgets/create_story_widget.dart';
import 'package:facebook_ui/screens/home/widgets/post_widget.dart';
import 'package:facebook_ui/screens/home/widgets/story_widget.dart';
import 'package:facebook_ui/screens/home/widgets/what_in_your_mind.dart';
import 'package:flutter/material.dart';

class HomeTabBody extends StatelessWidget {
  const HomeTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Use CustomScrollView (Slivers)
    return ListView(
      children: [
        const SizedBox(height: 8),
        const WhatInYourMind(),
        const Divider(color: AppColors.grey, thickness: 1.5),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              if (index == 0) return const CreateStoryWidget();
              return const StoryWidget();
            },
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemCount: 10,
          ),
        ),
        const Divider(color: AppColors.grey, thickness: 1.5),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const PostWidget(),
          separatorBuilder: (_, _) => const Divider(color: AppColors.grey),
          itemCount: 20,
        ),
      ],
    );
  }
}
