import 'package:uefa_flow/presentation/widgets/player_details_bottom_sheet.dart';
import 'package:uefa_flow/presentation/widgets/player_indicator.dart';
import '../../model/formation.dart';
import 'package:flutter/material.dart';
import 'live_player_wrapper.dart';

class HalfPitch extends StatelessWidget {
  const HalfPitch({super.key, required this.context, required this.rows});

  final BuildContext context;
  final List<FormationRow> rows;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: rows.asMap().entries.map((entry) {
        final index = entry.key;
        final row = entry.value;
        final yAlignment = rows.length > 1 ? (index / (rows.length - 1)) : 0.5;

        return Align(
          alignment: FractionalOffset(0.5, yAlignment),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: row.players.map((player) {
              return LivePlayerWrapper(
                seed: player.number + player.fullName.length,
                child: PlayerIndicator(
                  player: player,
                  onTap: () {
                    PlayerDetailsBottomSheet.show(context, player);
                  },
                ),
              );
            }).toList(),
          ),
        );
      }).toList(),
    );
  }
}
