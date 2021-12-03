//size 2048- only edge orientation 0 or 1(flipped or not)
/*
import java.util.Map;

//edge piece, orientation
HashMap<int, int> edgeOr = new HashMap<int, int>();
N1 = 2^11 = 2048


//encoded into 11 bit int, eac bit orientation of 1 edge
//gets orientation of every piece
//even # good and bad edges- avg. 6

int[] or = new int[12];

for(int i=0; i<12; i++){
    edgeOr.put(i, edges[i].orientation);
    or[i] = edges[i].orientation;

}

//v^n -1 << 4095

god's algorithm
Fill table completely with -1.
table[ pos2idx(startposition) ] = 0
len = 0
loopbegin
  c = 0
  for p = 1 to N
    if table[p] = len then
      for each available move m
        q = pos2idx( m applied to idx2pos(p) )
        if table[q]=-1 then
          c=c+1
          table[q] = len+1
        endif
      endfor
    endif
  endfor
  len = len + 1
  print c "positions at distance" len
loop while c>0


int returnOrientation(int[] or){
    int t=0;
    int v=2;
    for(int i=0; i<e; i++){
        t = t*v;
        t = t + or[i];
    }
    return t;
}


//uses index of every piece
for(Layout e : edges){
    edgeOr.put(e, t);
}
*/
int[,] P = new int[12, 12];
String moves = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2". "F2", "B2", "U2", "D2" };
Var C = CornerPermutationsI;
Var E = EdgePermutationsI;
int n = stateToIndex(C);
int m = stateToIndex(E);
int d = 0;

P[n, m] = d;

while(P[P.length-1] == 0){
  Var x;
  d ++;
  for(int i=0; i< x; i++){
    currentC = indexToState(x);
    currentE = indexToState(y);
  }

  for(int j=0; j<moves.length; j++){
    newC = applyMove(j, currentC);
    newE = applyMove(j, currentE);
    n = stateToIndex(C);
    m = stateToIndex(E);
    if (P(n, m) == null){
      P(n, m) = d;
    }
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