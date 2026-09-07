import 'package:facebook_ui/core/utils/app_assets.dart';
import 'package:facebook_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CreateStoryWidget extends StatelessWidget {
  const CreateStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 7,
                child: Image.asset(
                  AppImages.worldCup,
                  fit: .cover,
                  width: double.infinity,
                ),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: Text(
                    "Create a\nStory",
                    textAlign: .center,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 12,
                      fontWeight: .w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          _buildAddIcon(),
        ],
      ),
    );
  }
}

Widget _buildAddIcon() {
  return Column(
    crossAxisAlignment: .stretch,
    children: [
      const Spacer(flex: 74),
      Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: AppColors.blue,
          border: Border.all(color: AppColors.white, width: 2),
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.add, color: AppColors.white),
      ),
      const Spacer(flex: 26),
    ],
  );
}
