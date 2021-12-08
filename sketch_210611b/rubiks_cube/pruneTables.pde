int[] P1 = new int[12];
String moves = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2". "F2", "B2", "U2", "D2" };
Var E = EdgeOrientationsI;
int m = orToIndex(E);
int d = 0;

P1[m] = d;

while(P1[P1.length-1] == null){
  [x,y] = P1[d-1, d-1];
  d ++;
  for(int i=0; i< x.length; i++){
    currentE = indexToOr(y);
  }

  for(int j=0; j<moves.length; j++){
    newE = applyMove(j, currentE);
    m = orToIndex(E);
    if (P1[m] == null){
      P1[m] = d;
    }
  }
}

int[,] P2 = new int[20, 20];
String moves = {"L", "R", "F", "B",  "L'", "R'", "F'", "B'", "U2", "D2"}
int[] C = CornerOrientationsI;
int[] E = EdgePermutationsI;
int n = orToIndex(C);
int m = permToIndex(E);
int d = 0;

P2[m,n] = d;

while(P2[P2.length - 1], P2[P2.length - 1] == null){
  [x, y] = P2[d-1, d-1];
  d ++;
  for(int i=0; i<x.length; i++){
    currentC = indexOr(x);
    currentE = indexToPerm(y);
  }
}


int permToIndex(int[] perm){
  return null;
  
}

int[] indexToPerm(int index){
  return null;
}

int orToIndex(int[] or){
  int n = or.length();
  int v = 3;
  int index = 0;
  for(int i=0; i<n; i++){
    index = index * 3;
    index = index + or[i];
  }
  return index;
}

int[] indexToOr(int index){
  int s = 0;
  int[]
  return null;
}

int applyMove(int j, int cur){
  return null;
}