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
}

void solve(Move R){
  
  String[] movs1 = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2", "F2", "B2", "U2", "D2" };
  Prunes Prune1 = new Prunes(new int[1][4096], movs1, OrIE, OrIE, "EO", "EO");
  
  String[] movs2 = {"L", "R", "F", "B", "L'", "R'", "F'", "B'", "L2", "R2", "F2", "B2", "U2", "D2"}; 
  Prunes Prune2 = new Prunes(new int[2187][495], movs2, OrIC, PermIE, "CO", "EP");
  
  String[] movs3 = {"L", "R", "L'", "R'", "L2", "R2", "F2", "B2", "U2", "D2" }; 
  Prunes Prune3 = new Prunes(new int[40320][70], movs3, PermIC, PermIE, "CP", "EP");
  //should be corner perms in G3 and the edge cubie distributions
  
  String[] movs4 = {"L2", "R2", "F2", "B2", "U2", "D2"};
  Prunes Prune4 = new Prunes(new int[96][6912], movs4, PermIC, PermIE, "CP", "EP");
  
  String[] lines = loadStrings("P1.txt");
  for(int i=0; i<lines.length; i++){
    Prune1.P[0][i] = Integer.valueOf(lines[i]);
  }
  
  StringList solve = new StringList();
  int n = stateToIndex(R.OrME);
  int N = Prune1.P[0][n];
  
  while(N > 0){
      for(int i=0; i<18; i++){
          Move R2 = R.ApplyMove(getMove(movs1[i], allMoves));
          n = stateToIndex(R2.OrME);
          int M = Prune1.P[0][n] -1;
  
          if(M<N && M != -1){
              N = M;
              R = R2;
              solve.append(movs1[i]); 
              println(movs1[i]);
              break;
          }
      }
      
  }
  
  Move cur = R;
  for(String s : solve){
    cur = cur.ApplyMove(getMove(s, allMoves));
  }
  
  println(cur.OrME);
  
  String[] lines2 = loadStrings("P2.txt");
  for(int i=0; i<lines2.length; i++){
    int k=0;
    for(int j=0; j<lines2[i].length(); j++){ //<>//
      if(lines2[i].charAt(j) != ','){
        if(lines2[i].charAt(j) != '0' && lines2[i].charAt(j) != '1'){
          Prune2.P[i][k] = Integer.valueOf(lines2[i].charAt(j));
          k++;
        }
        else if(j+1< lines2[i].length() && j-1> 0){
          if(lines2[i].charAt(j) == '1' && lines2[i].charAt(j+1) == '0'){
            Prune2.P[i][k] = Integer.valueOf(lines2[i].charAt(j)+ lines2[i].charAt(j+1));
            k++;
          }    
        }
        
      }
    }
  }
  println(Prune2.P[2][3]);
  
}
