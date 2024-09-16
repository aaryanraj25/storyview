import 'dart:math';
import 'package:get/get.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:storyview/features/home/data/model/story_model.dart';

class HomeController extends GetxController {
  final FlutterTts flutterTts = FlutterTts();
  final RxList<Story> stories = RxList<Story>();
  final RxBool isLoading = false.obs;
  final RxBool isSpeaking = false.obs;

  final List<Story> _hardcodedStories = [
    Story(prompt: 'Generate a story', content: 'In a faraway land, a dragon discovered a hidden village full of magical creatures. They welcomed the dragon with open arms, and he found a new home and friends among them.'),
    Story(prompt: 'Generate a story', content: 'Sailing through the mist, a daring explorer found an island with an ancient chest. Inside, there was not just gold, but a map to even greater adventures awaiting.'),
    Story(prompt: 'Generate a story', content: 'While cleaning the attic, a young girl discovered an old book that granted her the ability to travel to different worlds with just a thought. She embarked on many fantastic adventures.'),
    Story(prompt: 'Generate a story', content: 'An alien from a distant planet landed on Earth, initially confused by human customs. Through friendship and kindness from a young boy, the alien learned about love and compassion.'),
    Story(prompt: 'Generate a story', content: 'A clever cat with a knack for puzzles was invited to solve a mysterious case involving a missing gem. The cat used its sharp mind and solved the mystery, bringing the gem back.'),
    Story(prompt: 'Generate a story', content: 'A time traveler went back to a seemingly insignificant moment in history and changed it. This small alteration caused a ripple effect, leading to unexpected changes in the present day.'),
    Story(prompt: 'Generate a story', content: 'A brave knight and a fearsome dragon, once enemies, decided to join forces against a common threat. Their alliance led to the defeat of a dark sorcerer and peace in their land.'),
    Story(prompt: 'Generate a story', content: 'A curious traveler ventured into an enchanted forest known for its mysteries. With each step, the forest revealed its secrets and wonders, leading to a life-changing experience.'),
    Story(prompt: 'Generate a story', content: 'A young inventor created a machine that could bring dreams to life. Each night, the machine would create incredible worlds and adventures, filling the inventors.'),
    Story(prompt: 'Generate a story', content: 'A magical mirror could show glimpses of the future. A wise old sage used it to guide a young hero on a quest, helping them overcome challenges and fulfill their destiny.')
  ];

  @override
  void onInit() {
    super.onInit();
  }

  void generateStory() async {
    isLoading.value = true;
    
    // Add user input to stories
    stories.add(Story(
      prompt: 'Generate a story',
      content: '',
    ));

    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    // Select a random story from hardcoded list
    final randomIndex = Random().nextInt(_hardcodedStories.length);
    final randomStory = _hardcodedStories[randomIndex];

    // Add generated story to stories
    stories.add(Story(
      prompt: '',
      content: randomStory.content,
    ));

    isLoading.value = false;
  }

  void speak(String content) async {
    isSpeaking.value = true;
    await flutterTts.speak(content);
  }

  void stop() async {
    isSpeaking.value = false;
    await flutterTts.stop();
  }
}