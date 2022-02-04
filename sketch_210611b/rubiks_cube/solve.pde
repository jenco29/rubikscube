/*
use prune tables
apply each move in group
check table for distance using the move
compare to current distance, apply if less
if more try next move
apply each move to the new layout and repeat until distance is 0
move onto next prune table
*/

String revMove(String mov){
  if(mov.length() == 2){
    if(mov.charAt(1) == '2'){
      return mov;
    }
    else{
      return str(mov.charAt(0));
      
    }
  }
  
}

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
  
  String[] movs1 = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2", "F2", "B2", "U2", "D2" };
  Prunes Prune1 = new Prunes(new int[1][4096], movs1, OrIE, OrIE, "EO", "EO");
  
  String[] movs2 = {"L", "R", "F", "B", "L'", "R'", "F'", "B'", "L2", "R2", "F2", "B2", "U2", "D2"}; 
  Prunes Prune2 = new Prunes(new int[2187][496], movs2, OrIC, PermIE, "CO", "EP");
  
  String[] movs3 = {"L", "R", "L'", "R'", "L2", "R2", "F2", "B2", "U2", "D2" }; 
  Prunes Prune3 = new Prunes(new int[40320][70], movs3, PermIC, PermIE, "CP", "EP");
  //should be corner perms in G3 and the edge cubie distributions(????)
  
  String[] movs4 = {"L2", "R2", "F2", "B2", "U2", "D2"};
  Prunes Prune4 = new Prunes(new int[96][6912], movs4, PermIC, PermIE, "CP", "EP");
  
  String[] lines = loadStrings("P1.txt");
  for(int i=1; i<lines.length -1; i++){
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
  /*
  String[] lines = loadStrings("P2.txt"); //<>//
    for(int i=0; i<lines.length; i++){
      for(int j=0; j<lines[i].length(); j++){
        if(lines[i].charAt(j) != '0' && lines[i].charAt(j) != '1' && lines[i].charAt(j) != '2' && lines[i].charAt(j) != '3' && lines[i].charAt(j) != '4' && lines[i].charAt(j) != '5' && lines[i].charAt(j) != '6' && lines[i].charAt(j) != '7' && lines[i].charAt(j) != '8' && lines[i].charAt(j) != '9'){
          
        }
        else{
          char q = lines[i].charAt(j);
          String qq = str(q);  
          int qqq = int(qq);
          Prune2.P[i][j] = qqq; 
        }
        
          
      }
    }
    
    int Cind = stateToIndex(cur.PermMC);
    int Eind = stateToIndex(cur.PermME);
    
    N = Prune2.P[Cind][Eind];
    
    while(N>0){
      for(int i=0; i<14; i++){
        
      }
    }
    */
 //<>//
  
}
