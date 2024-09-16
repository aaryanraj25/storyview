import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storyview/core/assets/image_assets.dart';
import 'package:storyview/core/common/common_bg.dart';
import 'package:storyview/features/home/presentation/controller/home_controller.dart';
import 'package:storyview/features/home/presentation/widgets/story_display.dart';
import 'package:storyview/features/home/presentation/widgets/story_input.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0), // Adjusted padding to avoid overlapping
                      child: StoryDisplay(controller: controller),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: StoryInput(controller: controller),
                  ),
                ],
              ),
              Positioned(
  top: -30.0, // Adjust this value to control the vertical position
  left: 0, // Set to 0 to center horizontally
  right: 0, // Set to 0 to center horizontally
  child: Align(
    alignment: Alignment.topCenter, // Center the logo horizontally
    child: Image.asset(
      ImageAssets.appLogo,
      height: 140, // Adjusted height to match your needs
    ),
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}
