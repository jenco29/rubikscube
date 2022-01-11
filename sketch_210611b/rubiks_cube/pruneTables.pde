Boolean hasVal(int[] arr, int num){
  Boolean has = false;
  for(int i : arr){
    if(i == num){
      has = true;
      return has;
    }
  }
  return has;
}

Boolean isFull(int[][] arr){
  for(int i=0; i<arr.length; i++){
    for(int j=0; j<arr[i].length; j++){
      if (arr[i][j] == -1){
        return false;
      }
    }
  }
  return true;
}


  int[] indexToState(int index, String type){
    //EO, EP, CO, CP
    int n;
    int v;
    int s;

    if(type.charAt(0) == 'C'){
      n = 8;
      v = 3;
    }
    else if(type.charAt(0) == 'E' ){
      n = 12;
      v = 2;
    }

    else{
      n = 0;
      v = 0;
    }

    int[] X = new int[n];

    if(type.charAt(1) == 'O'){
      s = 0;
      for(int i=n-1; i>0; i--){
        X[i] = index % v;
        s = s - X[i];
        if(s < 0){
          s = s + v;
        }
        index = (index - X[i]) / v;
      }
      X[n-1] = s;
      
    }

    else if(type.charAt(1) == 'P'){
      X[n] = 1;
      for(int i=n-1; n>0; i--){
        X[i] = 1 + index % (n-i+1);
        index = (index - (index % (n-i+1))) / (n-i+1);
        for(int j = i+1; j<n+1; j++){
          if(X[j] >= X[i]){
            X[j] = X[j] + 1;
          }
        }
      }

    }

    return X;
  }
  


  int stateToIndex(int[] state){
    int n = state.length;
    int index = 0;
    int v;
    
    if(n == 8){
      v = 3;
    }
    else{
      v = 2;
    }
    
    if(hasVal(state, n)){
      for(int i=0; i<n; i++){
        index = index * (n + 1 -i);
        for(int j= i+1; j<n; j++){
          if(state[i] > state[j]){
            index += 1;
            }
          }
        }      
    }
    
    else{
      for(int i=0; i<n; i++){
        index = index * v;
        index = index + state[i];
      }
    }

    return index;
    
  }
  
  

class Prunes{
  int[][] P;
  String[] Movs;
  int[] C;
  int[] E;
  String typeC;
  String typeE;

  
  Prunes(int[][] p, String[] movs, int[] c, int[] e, String tc, String te){
    
    this.P = p;
    this.Movs = movs;
    this.C = c;
    this.E = e;
    this.typeC = tc;
    this.typeE = te;
    

  }
  
  void generate(){
    for(int i=0; i<P.length; i++){
      for(int j=0; j<P[i].length; j++){
        P[i][j] = -1;
      }
    }
    int n = stateToIndex(C);
    int m = stateToIndex(E);
    
    P[0][m] = 0;
    int len = 0;
    int c;
    
    do{
      c = 0;
      for(int p=1; p<P.length + 1; p++){
        if(P[0][p] == len){
          for(String s : Movs){
            Move cur = getMove(s);
            int[] t = indexToState(p, typeE);
            int q = stateToIndex(getMove(s).getType(typeE));
            if(P[0][q] == -1){
              c += 1;
              P[0][q] = len+1;
            }
          }
        }
      }
      len += 1;
      println(c + "positions at distance " + len);
    }
    while(c >0);
     
  }
  

}

int[][] P1 = new int[1][4096];
String[] movs1 = {"L", "R", "F", "B", "U", "D", "L'", "R'", "F'", "B'", "U'", "D'", "L2", "R2", "F2", "B2", "U2", "D2" };

Prunes Prune1 = new Prunes(P1, movs1, OrIE, OrIE, "", "EO");

int[][] P2 = new int[2187][495];
String[] movs2 = {"L", "R", "F", "B", "L'", "R'", "F'", "B'", "L2", "R2", "F2", "B2", "U2", "D2"};

Prunes Prune2 = new Prunes(P2, movs2, OrIC, PermIE, "CO", "EP");

int[][] P3 = new int[40320][70];
String[] movs3 = {"L", "R", "L'", "R'", "L2", "R2", "F2", "B2", "U2", "D2" };

Prunes Prune3 = new Prunes(P3, movs3, PermIC, PermIE, "CP", "EP");
//should be corner perms in G3 and the edge cubie distributions(????)

int[][] P4 = new int[96][6912];
String[] movs4 = {"L2", "R2", "F2", "B2", "U2", "D2"};

Prunes Prune4 = new Prunes(P4, movs4, PermIC, PermIE, "CP", "EP");
