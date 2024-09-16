import 'package:flutter/material.dart';
import 'package:storyview/core/theme/app_pallete.dart';
import '../controller/home_controller.dart';

class StoryInput extends StatelessWidget {
  final HomeController controller;

  StoryInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Generate a story',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: AppColors.messageColor,
                      ),
                      onPressed: controller.generateStory,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}