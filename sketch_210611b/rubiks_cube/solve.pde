/*
use prune tables
apply each move in group
check table for distance using the move
compare to current distance, apply if less
if more try next move
apply each move to the new layout and repeat until distance is 0
move onto next prune table
*/

StringList solverR(Move R, StringList shuffle){
  
  StringList reverse = new StringList();
  for(int i=shuffle.size() -1; i>-1; i--){
    if(shuffle.get(i).length() == 2){
      
      if(shuffle.get(i).charAt(1) == '2'){
        String curMov = shuffle.get(i);
        reverse.append(curMov);
        R.ApplyMove(getMove(curMov, allMoves));
        
      }
      
      else{
        String curMov = str(shuffle.get(i).charAt(0));
        reverse.append(curMov);
        R.ApplyMove(getMove(curMov, allMoves));
      }
    }
    
    else{
      String curMov = shuffle.get(i)+"'";
      reverse.append(curMov);
      R.ApplyMove(getMove(curMov, allMoves));
    }
    
  }
  return reverse;

}

void solve(Move R){
  String[] lines = loadStrings("P1.txt");
  for(int i=0; i<lines.length; i++){
    Prune1.P[0][i] = Integer.valueOf(lines[i]);
  }
  
  //Prune1.generate();
  StringList solve = new StringList();
  int n = stateToIndex(R.OrME);
  int N = Prune1.P[0][n];
  
  while(N > 0){
      for(int i=0; i<18; i++){ //<>//
          Move R2 = R.ApplyMove(getMove(movs1[i], allMoves));
          n = stateToIndex(R2.OrME)/2;
          int M = Prune1.P[0][n];
  
          if(M<N){
              N = M;
              R = R2;
              solve.append(movs1[i]); 
              //println(movs1[i]);
              break;
          }
      }
      
  }
  
  Move cur = R;
  for(String s : solve){
    cur = cur.ApplyMove(getMove(s, allMoves));
  }
  
}
