import "../model/player.dart";
import "../model/formation.dart";

// Portugal Players
List<Player> portugalPlayers = [
  Player(
    fullName: 'Diogo Costa',
    number: 22,
    club: 'FC Porto',
    age: 24,
    country: 'Portugal',
    height: '1.86m',
    nameAbbreviation: 'D. Costa',
    position: 'Goalkeeper',
    appearances: 25,
    shortBio:
        'A composed goalkeeper with incredible penalty-saving ability and great distribution.',
    imagePath: 'assets/images/costa.png',
  ),
  Player(
    fullName: 'Nuno Mendes',
    number: 19,
    club: 'Paris Saint-Germain',
    country: 'Portugal',
    age: 22,
    height: '1.76m',
    nameAbbreviation: 'N. Mendes',
    position: 'Defender',
    appearances: 23,
    shortBio:
        'An explosive left-back known for his blistering pace and attacking runs.',
    imagePath: 'assets/images/mendes.png',
  ),
  Player(
    fullName: 'Rúben Dias',
    number: 4,
    club: 'Manchester City',
    country: 'Portugal',
    age: 27,
    height: '1.87m',
    nameAbbreviation: 'R. Dias',
    position: 'Defender',
    appearances: 56,
    shortBio: 'A commanding center-back and natural leader of the defense.',
    imagePath: 'assets/images/dias.png',
  ),
  Player(
    fullName: 'Gonçalo Inácio',
    number: 14,
    club: 'Sporting CP',
    country: 'Portugal',
    age: 23,
    height: '1.85m',
    nameAbbreviation: 'G. Inácio',
    position: 'Defender',
    appearances: 12,
    shortBio: 'A modern ball-playing center-back with excellent passing range.',
    imagePath: 'assets/images/inacio.png',
  ),
  Player(
    fullName: 'João Cancelo',
    number: 20,
    club: 'Al Hilal',
    country: 'Portugal',
    age: 30,
    height: '1.82m',
    nameAbbreviation: 'J. Cancelo',
    position: 'Defender',
    appearances: 55,
    shortBio:
        'A technically gifted full-back who thrives in the attacking third.',
    imagePath: 'assets/images/cancelo.png',
  ),
  Player(
    fullName: 'João Neves',
    number: 6,
    club: 'Benfica',
    country: 'Portugal',
    age: 19,
    height: '1.75m',
    nameAbbreviation: 'J. Neves',
    position: 'Midfielder',
    appearances: 27,
    shortBio:
        'A dynamic and technically gifted young midfielder with exceptional game intelligence.',
    imagePath: 'assets/images/neves.png',
  ),
  Player(
    fullName: 'Vitinha',
    number: 23,
    club: 'Paris Saint-Germain',
    country: 'Portugal',
    age: 24,
    height: '1.72m',
    nameAbbreviation: 'Vitinha',
    position: 'Midfielder',
    appearances: 18,
    shortBio: 'A creative and agile midfielder with superb close control.',
    imagePath: 'assets/images/vitinha.png',
  ),
  Player(
    fullName: 'Bruno Fernandes',
    number: 8,
    club: 'Manchester United',
    country: 'Portugal',
    age: 29,
    height: '1.79m',
    nameAbbreviation: 'B. Fernandes',
    position: 'Midfielder',
    appearances: 65,
    shortBio:
        'The creative heartbeat of the team, known for goals and assists.',
    imagePath: 'assets/images/fernandes.png',
  ),
  Player(
    fullName: 'Rafael Leão',
    number: 17,
    club: 'AC Milan',
    country: 'Portugal',
    age: 25,
    height: '1.88m',
    nameAbbreviation: 'R. Leão',
    position: 'Forward',
    appearances: 30,
    shortBio: 'A devastating winger with incredible speed and flair.',
    imagePath: 'assets/images/leao.png',
  ),
  Player(
    fullName: 'Bernardo Silva',
    number: 10,
    club: 'Manchester City',
    country: 'Portugal',
    age: 29,
    height: '1.73m',
    nameAbbreviation: 'B. Silva',
    position: 'Forward',
    appearances: 89,
    shortBio: 'A tireless playmaker with magical dribbling and vision.',
    imagePath: 'assets/images/silva.png',
  ),
  Player(
    fullName: 'Cristiano Ronaldo',
    number: 7,
    club: 'Al Nassr',
    country: 'Portugal',
    age: 39,
    height: '1.87m',
    nameAbbreviation: 'C. Ronaldo',
    position: 'Forward',
    appearances: 210,
    shortBio:
        'A legendary forward and one of the greatest goalscorers in history.',
    imagePath: 'assets/images/ronaldo.png',
  ),
];

LineupFormation portugalStartingXI = LineupFormation(
  formationName: "4-3-3",
  rows: [
    // Attack
    FormationRow(
      positionLine: "Forwards",
      players: [
        portugalPlayers.firstWhere((p) => p.number == 17),
        portugalPlayers.firstWhere((p) => p.number == 7),
        portugalPlayers.firstWhere((p) => p.number == 10),
      ],
    ),

    // Midfield
    FormationRow(
      positionLine: "Midfielders",
      players: [
        portugalPlayers.firstWhere((p) => p.number == 23),
        portugalPlayers.firstWhere((p) => p.number == 8),
        portugalPlayers.firstWhere((p) => p.number == 6),
      ],
    ),

    // Defense
    FormationRow(
      positionLine: "Defenders",
      players: [
        portugalPlayers.firstWhere((p) => p.number == 19),
        portugalPlayers.firstWhere((p) => p.number == 14),
        portugalPlayers.firstWhere((p) => p.number == 4),
        portugalPlayers.firstWhere((p) => p.number == 20),
      ],
    ),

    // Goalkeeper
    FormationRow(
      positionLine: "Goalkeeper",
      players: [portugalPlayers.firstWhere((p) => p.number == 22)],
    ),
  ],
);

// Spain Players
List<Player> spainPlayers = [
  Player(
    fullName: 'Unai Simón',
    number: 23,
    club: 'Athletic Bilbao',
    country: 'Spain',
    age: 27,
    height: '1.90m',
    nameAbbreviation: 'U. Simón',
    position: 'Goalkeeper',
    appearances: 41,
    shortBio: 'A reliable shot-stopper and Spain\'s undisputed number one.',
    imagePath: 'assets/images/simon.png',
  ),
  Player(
    fullName: 'Marc Cucurella',
    number: 24,
    club: 'Chelsea FC',
    country: 'Spain',
    age: 26,
    height: '1.73m',
    nameAbbreviation: 'M. Cucurella',
    position: 'Defender',
    appearances: 12,
    shortBio:
        'A high-energy, versatile left-back known for his tenacious tackling.',
    imagePath: 'assets/images/cucurella.png',
  ),
  Player(
    fullName: 'Aymeric Laporte',
    number: 14,
    club: 'Al Nassr',
    country: 'Spain',
    age: 30,
    height: '1.89m',
    nameAbbreviation: 'A. Laporte',
    position: 'Defender',
    appearances: 33,
    shortBio: 'An elegant center-back with fantastic passing ability.',
    imagePath: 'assets/images/laporte.png',
  ),
  Player(
    fullName: 'Pedro Porro',
    number: 2,
    club: 'Tottenham Hotspur',
    country: 'Spain',
    age: 26,
    height: '1.73m',
    nameAbbreviation: 'P. Porro',
    position: 'Defender',
    appearances: 30,
    shortBio:
        'An attacking right-back known for his pace, crossing, and relentless work rate.',
    imagePath: 'assets/images/porro.png',
  ),
  Player(
    fullName: 'Pau Cubarsí',
    number: 4,
    club: 'Barcelona',
    country: 'Spain',
    age: 19,
    height: '1.84m',
    nameAbbreviation: 'P. Cubarsí',
    position: 'Defender',
    appearances: 22,
    shortBio:
        'A composed young centre-back with exceptional positioning and ball-playing ability.',
    imagePath: 'assets/images/cubarsi.png',
  ),
  Player(
    fullName: 'Rodri',
    number: 16,
    club: 'Manchester City',
    country: 'Spain',
    age: 28,
    height: '1.91m',
    nameAbbreviation: 'Rodri',
    position: 'Midfielder',
    appearances: 50,
    shortBio:
        'The best defensive midfielder in the world, dictating the tempo.',
    imagePath: 'assets/images/rodri.png',
  ),
  Player(
    fullName: 'Fabián Ruiz',
    number: 8,
    club: 'Paris Saint-Germain',
    country: 'Spain',
    age: 28,
    height: '1.89m',
    nameAbbreviation: 'F. Ruiz',
    position: 'Midfielder',
    appearances: 30,
    shortBio: 'A left-footed orchestrator with a brilliant long-range shot.',
    imagePath: 'assets/images/ruiz.png',
  ),
  Player(
    fullName: 'Pedri',
    number: 20,
    club: 'Barcelona',
    country: 'Spain',
    age: 23,
    height: '1.74m',
    nameAbbreviation: 'Pedri',
    position: 'Midfielder',
    appearances: 34,
    shortBio:
        'A world-class playmaker with exceptional vision, close control, and creativity.',
    imagePath: 'assets/images/pedri.png',
  ),
  Player(
    fullName: 'Nico Williams',
    number: 17,
    club: 'Athletic Bilbao',
    country: 'Spain',
    age: 21,
    height: '1.81m',
    nameAbbreviation: 'N. Williams',
    position: 'Forward',
    appearances: 19,
    shortBio: 'An electrifying winger with incredible speed and dribbling.',
    imagePath: 'assets/images/williams.png',
  ),
  Player(
    fullName: 'Lamine Yamal',
    number: 19,
    club: 'FC Barcelona',
    country: 'Spain',
    age: 16,
    height: '1.78m',
    nameAbbreviation: 'L. Yamal',
    position: 'Forward',
    appearances: 12,
    shortBio: 'A generational talent with astonishing skill and maturity.',
    imagePath: 'assets/images/yamal.png',
  ),
  Player(
    fullName: 'Mikel Oyarzabal',
    number: 21,
    club: 'Real Sociedad',
    country: 'Spain',
    age: 29,
    height: '1.81m',
    nameAbbreviation: 'M. Oyarzabal',
    position: 'Forward',
    appearances: 48,
    shortBio:
        'A clinical forward who combines intelligent movement, creativity, and finishing.',
    imagePath: 'assets/images/oyarzabal.png',
  ),
];

LineupFormation spainStartingXI = LineupFormation(
  formationName: "4-3-3",
  rows: [
    // Attack
    FormationRow(
      positionLine: "Forwards",
      players: [
        spainPlayers.firstWhere((p) => p.number == 17),
        spainPlayers.firstWhere((p) => p.number == 21),
        spainPlayers.firstWhere((p) => p.number == 19),
      ],
    ),

    // Midfield
    FormationRow(
      positionLine: "Midfielders",
      players: [
        spainPlayers.firstWhere((p) => p.number == 20),
        spainPlayers.firstWhere((p) => p.number == 16),
        spainPlayers.firstWhere((p) => p.number == 8),
      ],
    ),

    // Defense
    FormationRow(
      positionLine: "Defenders",
      players: [
        spainPlayers.firstWhere((p) => p.number == 24),
        spainPlayers.firstWhere((p) => p.number == 14),
        spainPlayers.firstWhere((p) => p.number == 4),
        spainPlayers.firstWhere((p) => p.number == 2),
      ],
    ),

    // Goalkeeper
    FormationRow(
      positionLine: "Goalkeeper",
      players: [spainPlayers.firstWhere((p) => p.number == 23)],
    ),
  ],
);
