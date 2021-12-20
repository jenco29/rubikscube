Boolean isFull(int[] arr){
  Boolean full = false;
  for(int i=0; i< arr.length; i++){
    if(arr[i] == -1){
      break;
    }
  }
  return full;
}

Move getMove(String mov){
  Move theMove = null;
  for(Move m : allMoves){
    if(m.Name == mov){
      theMove = m;
    }
  }
  return theMove;
}

void Prune1(){
  int[] P1 = new int[2048];
  String[] movs1 = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2", "F2", "B2", "U2", "D2" };
  int n = orToIndex(Identity.OrME);
  int N = P1[n];

  while(N>0){
    for(int i=0; i<18; i++){
      ApplyMove(Identity, getMove(movs1[i]));
    }
  }
/*
  while(P1[P1.length-1] == null){
    int x = 0;
    int y = 0;
    d ++;
    for(int i=0; i< x.length; i++){
      int[] currentE = indexToOr(y);
    }
  
    for(int j=0; j<moves.length; j++){
      newE = applyMove(currentE, );
      m = orToIndex(EdgeOrientationsI);
      if (P1[m] == null){
        P1[m] = d;
      }
    }
  }
  */

}

/*
int[][] P2 = new int[20][20];
String[] movs2 = {"L", "R", "F", "B",  "L'", "R'", "F'", "B'", "U2", "D2"};
int n = orToIndex(CornerOrientationsI);
int m = permToIndex(EdgePermutationsI);
int d = 0;

P2[m][n] = d;

while(P2[P2.length - 1][P2[P2.length - 1]] == null){

  int x = //find val [x][] d-1 in P2
  int y = //find val [][y] d-1 in P2
  d ++;
  for(int i=0; i<x.length; i++){
    int[] currentC = indexOr(x);
    int[] currentE = indexToPerm(y);
  }
}
*/
int permToIndex(int[] perm){
  int n = perm.length;
  int index = 0;
  for(int i=1; i<n; i++){
    index = index * (n+1-i);
    for(int j=i+1; j<n+1; j++){
      if(perm[i] > perm[j]){
        index += 1;
      }
    }
  }
  return index;
  
}

int[] indexToPerm(int index){
  int n = 5;
  int[] perm = new int[n];
  perm[n] = 1;
  for(int i=n-1; i>0; i--){
    perm[i] = 1 + (index % (n-i+1));
    index = (index - (index % (n-i+1))) / (n-i+1);
    for(int j=i+1; j<n+1; j++){
      if(perm[j] >= perm[i]){
        perm[j] = perm[j] + 1;
      }
    }
  } 
  return perm;
}

int orToIndex(int[] or){
  int n = or.length;
  int v = 3;
  int index = 0;
  for(int i=0; i<n; i++){
    index = index * v;
    index = index + or[i];
  }
  return index;
}

int[] indexToOr(int index){
  int v = 3;
  int s = 0;
  int n = 20;
  int[] or = new int[n];
  for(int i=n; i>0; i--){
    or[i] = index % v;
    s = s - or[i];
    if(s<0){
      s += v;
    }
    index = (index-or[i]) / v;
  }
  or[n] = s;
  return or;
}
