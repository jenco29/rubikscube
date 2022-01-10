/*
use prune tables
apply each move in group
check table for distance using the move
compare to current distance, apply if less
if more try next move
apply each move to the new layout and repeat until distance is 0
move onto next prune table
*/

StringList solver(Move R){
  
  String[] lines = loadStrings("P1.txt");
  for(int i=0; i<lines.length; i++){
    P1[0][i] = Integer.valueOf(lines[i]);
  }
  StringList solve = new StringList();
  int n = stateToIndex(R.OrME);
  int N = P1[0][n];
  
  while(N > 0){
      for(int i=0; i<18; i++){
          Move R2 = R.ApplyMove(getMove(movs1[i]));
          n = stateToIndex(R2.OrME)/2;
          int M = P1[0][n];
  
          if(M<N){
              N = M;
              R = R2;
              solve.append(movs1[i]);
              break;
          }
      }
  }
  
  return solve;

}
