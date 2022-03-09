/*
use prune tables
apply each move in group
check table for distance using the move
compare to current distance, apply if less
if more try next move
apply each move to the new layout and repeat until distance is 0
move onto next prune table
*/

//applies the reverse of the move
String revMove(String mov){
  if(mov.length() == 2){
    if(mov.charAt(1) == '2'){
      return mov;
    }
    else{
      return str(mov.charAt(0));
      
    }
  }
  else{
    return mov + "'";
  }
  
  
}
//recursively reverses the input shuffle
void solverRev(StringList shuffle){
  String firstItem = null;
  if(shuffle.size() == 0){//base case
    return;
  }
  else{
    firstItem = shuffle.get(0);
    shuffle.remove(0);
  }
  solverRev(shuffle);
  rev.append(firstItem);
}

//applies the reverse move to the reverse string
StringList solverR(Move R, StringList rev){
  StringList opp = new StringList();
  for(String r: rev){
    String rq = revMove(r);
    opp.append(rq);
    R.ApplyMove(getMove(rq, allMoves));
  }
  return opp;
} //<>//

int indOfPrun(int[][] prun, int ind){
  for(int i=0; i<prun.length; i++){
    if(prun[0][i] == ind){
      return ind;
    }
  }
  return -1;
}

void solve(Move R){
  
  String[] movs1 = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2", "F2", "B2", "U2", "D2" };
  Prunes Prune1 = new Prunes(new int[1][4096],null, null, movs1, OrIE, OrIE, "EO", "EO");
  
  String[] movs2 = {"L", "R", "F", "B", "L'", "R'", "F'", "B'", "L2", "R2", "F2", "B2", "U2", "D2"}; 
  Prunes Prune2 = new Prunes(new int[2187][495],new int[1][495], new int[1][2187], movs2, OrIC, PermIE, "CO", "EP");
  
  String[] movs3 = {"L", "R", "L'", "R'", "L2", "R2", "F2", "B2", "U2", "D2" }; 
  Prunes Prune3 = new Prunes(new int[40320][70], new int[1][70],new int[1][40320], movs3, PermIC, PermIE, "CP", "EP");

  //should be corner perms in G3 and the edge cubie distributions
  
  String[] movs4 = {"L2", "R2", "F2", "B2", "U2", "D2"};
  Prunes Prune4 = new Prunes(new int[96][6912], new int[1][6912], new int[1][96], movs4, PermIC, PermIE, "CP", "EP");

  //read in all the files for the prune tables
  readTable(Prune1.P, "P1.txt");
  
  readTable(Prune2.P, "P2.txt");
  readTable(Prune2.PE, "P2E.txt");
  readTable(Prune2.PC, "P2C.txt");
  
  readTable(Prune3.P, "P3.txt");
  readTable(Prune3.PE, "P3E.txt");
  readTable(Prune3.PC, "P3C.txt");
  
  readTable(Prune4.P, "P4.txt");
  readTable(Prune4.PE, "P4E.txt");
  readTable(Prune4.PC, "P4C.txt");
  

  StringList solve = new StringList();
  
  //PHASE 1
  int n = stateToIndex(R.OrME);
  int N = Prune1.P[0][n];
  
  while(N > 0){
    //try all moves
      for(int i=0; i<18; i++){
          Move R2 = R.ApplyMove(getMove(Prune1.Movs[i], allMoves));
          n = stateToIndex(R2.OrME);
          int M = Prune1.P[0][n] -1;
  //apply move if the depth is less
          if(M<N && M != -1){
              N = M;
              R = R2;
              solve.append(Prune1.Movs[i]); 
              break;
          }
      }
      
  }
  
  //PHASE 2
  
  //gets indices from the shortened prune tables, for the main one to use
  int Eind = abs(stateToIndex(R.getType("EP")));
  int Cind = abs(stateToIndex(R.getType("CO")));
   
  m = indOfPrun(Prune2.PE, Eind);   //<>//
  n = indOfPrun(Prune2.PC, Cind);  //<>//
   //<>//
  N = Prune2.P[n][m];
  
  //repeat until 0 (solved state for that phase) is found
  while(N>0){
    //14 possible moves to try
    for(int i=0; i<14; i++){ //<>//
      Move R2 = R.ApplyMove(getMove(Prune2.Movs[i], allMoves)); //<>//
      Cind = stateToIndex(R2.getType("CO"));
      Eind = stateToIndex(R2.getType("EP"));
      m = indOfPrun(Prune2.PE, Eind);
      n = indOfPrun(Prune2.PC, Cind);
      int M = Prune2.P[n][m];
      //apply move if the depth is less
      if(M<N){
        N = M;
        R = R2;
        solve.append(Prune2.Movs[i]);
        break;
      }
    }
  } //<>//
   //<>//
  //PHASE 3
  
  Cind = stateToIndex(R.getType("CP"));
  Eind = stateToIndex(R.getType("EP"));
  
  n = indOfPrun(Prune3.PC, Cind);
  m = indOfPrun(Prune3.PE, Eind);
  
  N = Prune3.P[n][m];
  
  while(N > 0){
    for(int i=0; i<10; i++){
      Move R2 = R.ApplyMove(getMove(Prune3.Movs[i], allMoves));
      Cind = stateToIndex(R2.getType("CP"));
      Eind = stateToIndex(R2.getType("EP"));
      n = indOfPrun(Prune3.PC, Cind);
      m = indOfPrun(Prune3.PE, Eind);
      int M = Prune3.P[n][m];
      if(M<N){
        N = M;
        R = R2;
        solve.append(Prune3.Movs[i]);
        break;
      }
    }
  }
  
  //PHASE 4
  //close to the solved state so can be compared to that rather than the other way round
  Cind = stateToIndex(Identity.PermMC);
  Eind = stateToIndex(Identity.PermME);
  
  n = indOfPrun(Prune4.PC, Cind);
  m = indOfPrun(Prune4.PE, Eind);
  
  N = Prune4.P[n][m];
  
  while(N>0){
    //only six possible moves
    for(int i=0; i<6; i++){
      Move R2 = R.ApplyMove(getMove(Prune4.Movs[i], allMoves));
      Cind = stateToIndex(R2.PermMC);
      Eind = stateToIndex(R2.PermME);
      n = indOfPrun(Prune4.PC, Cind);
      m = indOfPrun(Prune4.PE, Eind);
      int M = Prune4.P[n][m];
      
      if(M<N){
        n = M;
        R = R2;
        solve.append(Prune4.Movs[i]);
        break;
      }
    }
    
  }
  
  
}
