import 'player.dart';
import '../data/sample_data.dart';

class FormationRow {
  final String positionLine;
  final List<Player> players;

  FormationRow({required this.positionLine, required this.players});
}

class LineupFormation {
  final String formationName;
  final List<FormationRow> rows;

  LineupFormation({required this.formationName, required this.rows});
}

Player getPlayer(int number) {
  return portugalPlayers.firstWhere((p) => p.number == number);
}