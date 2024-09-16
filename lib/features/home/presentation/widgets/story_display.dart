import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storyview/core/theme/app_pallete.dart';
import '../controller/home_controller.dart';

class StoryDisplay extends StatelessWidget {
  final HomeController controller;

  const StoryDisplay({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      } else if (controller.stories.isNotEmpty) {
        return ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: controller.stories.length,
          itemBuilder: (context, index) {
            final story = controller.stories[index];
            final isUserMessage = story.prompt.isNotEmpty;

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: isUserMessage ? MainAxisAlignment.start : MainAxisAlignment.end,
                children: [
                  if (isUserMessage)
                    Container(
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        story.prompt,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  if (!isUserMessage)
                    Container(
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: AppColors.messageColor,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            story.content,
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.play_arrow, color: AppColors.whiteColor),
                                onPressed: () => controller.speak(story.content),
                              ),
                              IconButton(
                                icon: Icon(Icons.stop, color: AppColors.whiteColor),
                                onPressed: controller.stop,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            );
          },
        );
      } else {
        return Center(child: Text('Generate a story to get started!'));
      }
    });
  }
}