import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../core/utils/app_assets.dart';

class AnimatedButton extends StatelessWidget {
  final RiveAnimationController buttonAnimationController;
  final VoidCallback press;

  const AnimatedButton({
    super.key,
    required this.buttonAnimationController,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(
          children: [
            RiveAnimation.asset(
              RiveAssets.button,
              controllers: [buttonAnimationController],
            ),
            Positioned.fill(
              top: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.arrow_forward),
                  SizedBox(width: 8),
                  Text(
                    'Start the course',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
