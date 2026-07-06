import 'package:flutter/material.dart';

class TeamLogo extends StatelessWidget {
  const TeamLogo({super.key, required this.assetPath, required this.teamName});

  final String assetPath;
  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.15),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(assetPath, fit: BoxFit.contain),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          teamName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
