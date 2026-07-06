import 'package:flutter/material.dart';
import 'package:uefa_flow/presentation/widgets/pitch_line_painter.dart';
import '../../data/sample_data.dart';
import '../../model/formation.dart';
import 'half_pitch.dart';
import 'player_indicator.dart';
import 'live_player_wrapper.dart';
import 'player_details_bottom_sheet.dart';

class PitchView extends StatelessWidget {
  const PitchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade200, width: 1.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            Positioned.fill(child: CustomPaint(painter: PitchLinesPainter())),
            Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left: 16,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/portugal_logo.png',
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              "Portugal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 16,
                        child: Text(
                          portugalStartingXI.formationName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 48.0, bottom: 8.0),
                        child: HalfPitch(
                          context: context,
                          rows: portugalStartingXI.rows.reversed.toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 48.0),
                        child: HalfPitch(
                          context: context,
                          rows: spainStartingXI.rows,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 16,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/spain_logo.png',
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              "Spain",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 16,
                        child: Text(
                          spainStartingXI.formationName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
