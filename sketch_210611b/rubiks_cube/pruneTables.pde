int[] P1 = new int[12];
String moves = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2". "F2", "B2", "U2", "D2" };
Var E = EdgeOrientationsI;
int m = stateToIndex(E);
int d = 0;

P1[m] = d;

while(P1[P1.length-1] == null){
  [x,y] = P1[d-1, d-1];
  d ++;
  for(int i=0; i< x.length; i++){
    currentE = indexToState(y);
  }

  for(int j=0; j<moves.length; j++){
    newE = applyMove(j, currentE);
    m = stateToIndex(E);
    if (P1[m] == null){
      P1[m] = d;
    }
  }
}

int[,] P2 = new int[20, 20];
String moves = {"L", "R", "F", "B",  "L'", "R'", "F'", "B'", "U2", "D2"
Var C = CornerOrientationsI;
Var E = EdgePermutationsI;
int n = stateToIndex(C);
int m = stateToIndex(E);
int d = 0;

P2[m,n] = d;

while(P2[P2.length - 1], P2[P2.length - 1] == null){
  [x, y] = P2[d-1, d-1];
  d ++;
  for(int i=0; i<x.length; i++){
    currentC = indexToState(x);
  }
}


int stateToIndex(int val){
  return null;
  
}

int indexToState(int val){
  return null;
}

int applyMove(int j, int cur){
  return null;
}