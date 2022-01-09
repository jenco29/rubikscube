/*
use prune tables
apply each move in group
check table for distance using the move
compare to current distance, apply if less
if more try next move
apply each move to the new layout and repeat until distance is 0
move onto next prune table
*/

StringList solver(){
  
  StringList solve = new StringList();
  Move R = getState(solve);
  int n = stateToIndex(R.OrME);
  int N = P1[n][1];
  
  while(N > 0){
      for(int i=0; i<18; i++){
          Move R2 = ApplyMove(R, getMove(movs1[i]));
          n = stateToIndex(R2.OrME);
          int M = P1[n][1];
  
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
