import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storyview/core/assets/image_assets.dart';

class CommonBackground extends StatelessWidget {
  final Widget child;

  const CommonBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        // Background layers
        Container(
          width: 1.sw,
          height: 1.sh,
          color: Colors.white,
        ),
        Positioned.fill(
          child: Image.asset(
            ImageAssets.topLeftImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Image.asset(
            ImageAssets.centerImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Image.asset(
            ImageAssets.topRightImage,
            fit: BoxFit.cover,
          ),
        ),

        // Child widget (content) on top of the background
        child,
      ],
    );
  }
}
