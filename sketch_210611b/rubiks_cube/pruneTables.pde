int[] P1 = new int[12];
String[] movs1 = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2", "F2", "B2", "U2", "D2" };
int m = orToIndex(EdgeOrientationsI);
int d = 0;

P1[m] = d;

while(P1[P1.length-1] == null){
  [x][y] = P1[d-1][d-1];
  d ++;
  for(int i=0; i< x.length; i++){
    currentE = indexToOr(y);
  }

  for(int j=0; j<moves.length; j++){
    newE = applyMove(currentE, j, );
    m = orToIndex(EdgeOrientationsI);
    if (P1[m] == null){
      P1[m] = d;
    }
  }
}

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

int permToIndex(int[] perm){
  int n = perm.length;
  int index = 0;
  for(int i=1; i<n; i++){
    index = index * (n+1-i);
    for(int j=i+1; j<n+1){
      if(perm[i] > perm[j]){
        index += 1;
      }
    }
  }
  return index;
  
}

int[] indexToPerm(int index){
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
  return null;
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
  return or[];
}
