import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storyview/core/assets/image_assets.dart';
import 'package:storyview/features/splash/controller/splash_controller.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late SplashController _controller;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = SplashController(context);
    _controller.startSplashTimer(); // Start the timer for splash

    // Initialize animation controller for the logo animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Define the scaling animation from 0 to 1
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    // Start the logo animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose(); // Dispose of the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              width: 200,
              height: 200,
              ImageAssets.splashBackground, // Your background image path
              fit: BoxFit.cover,
            ),
          ),
          // Semi-transparent black overlay
          
          // Pinkish gradient overlay from bottom
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    const Color(0xFFEB145A).withOpacity(0.3), // Pink color with opacity
                    Colors.transparent, // Transparent effect
                  ],
                  stops: const [0.0, 0.5], // Control the position of the gradient
                ),
              ),
            ),
          ),
          // Overlay content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(),
                ),
                // Logo with Scale Animation
                ScaleTransition(
                  scale: _animation,
                  child: Hero(
                    tag: "splash_logo",
                    child: Image.asset(
                      ImageAssets.splashLogo, // Your logo path
                      width: 210.w,
                      height: 162.w,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
