import 'package:flutter/material.dart';
import 'package:uefa_flow/presentation/widgets/player_details_content.dart';
import '../../model/player.dart';

class PlayerDetailsBottomSheet {
  static Future<void> show(BuildContext context, Player player) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: Colors.black.withValues(alpha: 0.6),
      transitionDuration: const Duration(milliseconds: 700),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: PlayerDetailsContent(player: player),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final isEntering = animation.status == AnimationStatus.forward || animation.status == AnimationStatus.completed;
        
        final positionAnimation = Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: isEntering ? Curves.elasticOut : Curves.easeOutCubic,
        ));

        final fadeAnimation = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: isEntering ? Curves.easeIn : Curves.easeOut,
        ));

        return SlideTransition(
          position: positionAnimation,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: child,
          ),
        );
      },
    );
  }
}


