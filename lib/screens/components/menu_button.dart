import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../core/utils/app_assets.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback press;
  final ValueChanged<Artboard> riveOnInit;

  const MenuButton({
    super.key,
    required this.press,
    required this.riveOnInit,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.only(left: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 3),
                blurRadius: 8,
              ),
            ],
          ),
          child: RiveAnimation.asset(
            RiveAssets.menuButton,
            onInit: riveOnInit,
          ),
        ),
      ),
    );
  }
}
