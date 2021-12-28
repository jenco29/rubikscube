Boolean isFull(int[] arr){
  Boolean full = false;
  for(int i=0; i< arr.length; i++){
    if(arr[i] == -1){
      break;
    }
  }
  return full;
}


class Prunes{
  int[][] P;
  String[] Movs;
  int[] C;
  int[] E;
  Move[] allMoves = new Move[18];
  
  Move getMove(String mov){
  Move theMove = null;
  for(Move m : allMoves){
    if(m.Name == mov){
      theMove = m;
    }
  }
  return theMove;
}

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
  
  
  Prunes(int[][] p, String[] movs, int[] c, int[] e){
    
    this.P = p;
    this.Movs = movs;
    this.C = c;
    this.E = e;
    
    allMoves[0] = Front;
    allMoves[3] = Back;
    allMoves[6] = Left;
    allMoves[9] = Right;
    allMoves[12] = Up;
    allMoves[15] = Down;
  }
}

int[][] P1 = new int[2048][1];
String[] movs1 = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2", "F2", "B2", "U2", "D2" };

Prunes Prune1 = new Prunes(P1, movs1, null, OrIE);

int[][] P2 = new int[1082565][1082565];
String[] movs2 = {"L", "R", "F", "L'", "R'", "F'", "B'", "L2", "R2", "F2", "B2", "U2", "D2"};

Prunes Prune2 = new Prunes(P2, movs2, OrIC, PermIE);

int[][] P3 = new int[2822400][2822400];
String[] movs3 = {"L", "R", "L'", "R'", "L2", "R2", "F2", "B2", "U2", "D2" };
