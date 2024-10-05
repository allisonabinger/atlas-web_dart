import '7-basketball-shots.dart';

main() {
  var teamA = {'Free throws' : 0, '2 pointers' : 0, '3 pointers': 3};
  var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}
