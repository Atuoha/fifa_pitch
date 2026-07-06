import 'package:flutter/material.dart';
import '../../model/player.dart';
import '../../core/app_colors.dart';

class PlayerIndicator extends StatelessWidget {
  final Player player;
  final VoidCallback onTap;

  const PlayerIndicator({
    super.key,
    required this.player,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isPortugal = player.country.toLowerCase().contains("portugal");
    final color = isPortugal ? AppColors.portugalRed : AppColors.spainBlue;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              player.number.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            player.nameAbbreviation,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
