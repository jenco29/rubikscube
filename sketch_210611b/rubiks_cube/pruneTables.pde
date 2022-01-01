Boolean isFull(int[] arr){
  Boolean full = false;
  for(int i=0; i< arr.length; i++){
    if(arr[i] == -1){
      break;
    }
  }
  return full;
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
  

/*
  int stateToIndex(int[] state, String type){
    if(type[0] == 'C'){
      int n = 8;
      int v = 3;
    }
    else if(type[0] == 'E'){
      int n = 12;
      int v = 2;
    }
    else{
      println(gl.glGetError());
    }

    if(type[1] == "O"){
      int s = 0;

    }
    else if(type[1] == "P"){

    }
    else{
      println(gl.glGetError());
    }

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
    
  }*/

class Prunes{
  int[][] P;
  String[] Movs;
  int[] C;
  int[] E;

  
  Prunes(int[][] p, String[] movs, int[] c, int[] e){
    
    this.P = p;
    this.Movs = movs;
    this.C = c;
    this.E = e;

  }

}

int[][] P1 = new int[2048][1];
String[] movs1 = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2", "F2", "B2", "U2", "D2" };

Prunes Prune1 = new Prunes(P1, movs1, null, OrIE);

int[][] P2 = new int[2187][495];
String[] movs2 = {"L", "R", "F", "B", "L'", "R'", "F'", "B'", "L2", "R2", "F2", "B2", "U2", "D2"};

Prunes Prune2 = new Prunes(P2, movs2, OrIC, PermIE);

int[][] P3 = new int[40320][70];
String[] movs3 = {"L", "R", "L'", "R'", "L2", "R2", "F2", "B2", "U2", "D2" };

Prunes Prune3 = new Prunes(P3, movs3, PermIC, PermIE);
//should be corner perms in G3 and the edge cubie distributions(????)

int[][] P4 = new int[96][6912];
String[] movs4 = {"L2", "R2", "F2", "B2", "U2", "D2"};

Prunes Prune4 = new Prunes(P4, movs4, PermIC, PermIE);
