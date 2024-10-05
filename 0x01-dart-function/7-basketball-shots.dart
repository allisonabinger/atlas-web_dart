// accepts two maps of successful shots for each shot type in basketball game
// calculates total number of points for each team
// and returns the winning team
// Free throws => 1 point
// 2 pointers => 2 points
// 3 pointers => 3 points

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calculatePoints(Map<String, int> team) {
    // ?? 0 = null-coalescing op. uses 0 if it doesnt exist
    return (team['Free throws'] ?? 0) * 1 +
        (team['2 pointers'] ?? 0) * 2 +
        (team['3 pointers'] ?? 0) * 3;
  }

  int pointsA = calculatePoints(teamA);
  int pointsB = calculatePoints(teamB);

  if (pointsA > pointsB) {
    return 1;
  } else if (pointsB > pointsA) {
    return 2;
  } else {
    return 0;
  }
}
