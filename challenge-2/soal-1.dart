void main() {
  // Data 1
  List<int> scoresDolphin = [96, 108, 89];
  List<int> scoresKoala = [88, 91, 110];

  // Data Bonus 1
  List<int> bonus1ScoresDolphin = [97, 112, 101];
  List<int> bonus1ScoresKoala = [109, 95, 123];

  // Data Bonus 2
  List<int> bonus2ScoresDolphin = [97, 112, 101];
  List<int> bonus2ScoresKoala = [109, 95, 106];

  // Hitung rata-rata skor untuk setiap tim
  double averageScoreDolphin = calculateAverage(scoresDolphin);
  double averageScoreKoala = calculateAverage(scoresKoala);

  //bonus 1
  double averageBonus1ScoreDolphin = calculateAverage(bonus1ScoresDolphin);
  double averageBonus1ScoreKoala = calculateAverage(bonus1ScoresKoala);

  //bonus 2
  double averageBonus2ScoreDolphin = calculateAverage(bonus2ScoresDolphin);
  double averageBonus2ScoreKoala = calculateAverage(bonus2ScoresKoala);

  // Tentukan pemenang atau hasil seri
  String winner = determineWinner(averageScoreDolphin, averageScoreKoala);
  String winner1 = determineWinner(averageBonus1ScoreDolphin, averageBonus1ScoreKoala);
  String winner2 = determineWinner(averageBonus2ScoreDolphin, averageBonus2ScoreKoala);

  // Cetak hasil
  print("==============================================================\n");
  print('Rata-rata skor Lumba-lumba: $averageScoreDolphin');
  print('Rata-rata skor Koala: $averageScoreKoala');
  print('Pemenang: $winner');
  print("==============================================================\n");

  print('Rata-rata skor Lumba-lumba: $averageBonus1ScoreDolphin');
  print('Rata-rata skor Koala: $averageBonus1ScoreKoala');
  print('Pemenang: $winner1');
  print("==============================================================\n");

  print('Rata-rata skor Lumba-lumba: $averageBonus2ScoreDolphin');
  print('Rata-rata skor Koala: $averageBonus2ScoreKoala');
  print('Pemenang: $winner2');
  print("==============================================================\n");
}

// Fungsi untuk menghitung rata-rata skor
double calculateAverage(List<int> scores) {
  double total = 0;
  for (int score in scores) {
    total += score;
  }
  return total / scores.length;
}

// Fungsi untuk menentukan pemenang atau hasil seri
String determineWinner(double avgDolphin, double avgKoala) {
  if (avgDolphin >= 100 && avgKoala >= 100) {
    if (avgDolphin > avgKoala) {
      return 'Lumba-lumba memenangkan kompetisi!';
    } else if (avgKoala > avgDolphin) {
      return 'Koala memenangkan kompetisi!';
    } else {
      return 'Hasil seri!';
    }
  } else {
    return 'Tidak ada tim yang memenuhi syarat untuk memenangkan trofi.';
  }
}
