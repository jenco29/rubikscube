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

    //if a corner
    if(type.charAt(0) == 'C'){
      n = 8;
      v = 3;
    }

    //if an edge
    else if(type.charAt(0) == 'E' ){
      n = 12;
      v = 2;
    }

    //catch errors
    else{
      n = 0;
      v = 0;
    }

    int[] X = new int[n];
    //if orientation
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
      X[0] = abs(X[0] -1);
      
    }
    //if permuation
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
    //if permutation (will have a number either 12 or 8, or only -1 to 1)
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
      //if orientation
      for(int i=0; i<n; i++){
        index = index * v;
        index = index + state[i];
      }
    }

    return index;
    
  }
  
  int[] applyState(int[] curStat, int[] stat, String type){
    int n;
    int m;
    if(type.charAt(0) == 'E'){
      n = 12; 
      m = 2;
    }
    else{
      n = 8;
      m = 3;
    }
    int[] newS = new int[n];
    switch(type.charAt(1)){
      case('P'):
        for(int i=0; i<n; i++){
          newS[i] = curStat[stat[i]-1];
        }
        return newS;
        
      case('O'):
         for(int i=0; i<n; i++){
           newS[i] = (curStat[i] + stat[i]) % m;
          }
          return newS;
      default:
        return null;
    }

    //returns state not move, depending on the type inputted.
  }
  
  

class Prunes{
  int[][] P;
  int[][] PE;
  int[][] PC;
  //prune table
  String[] Movs;
  int[] C;
  int[] E;
  String typeC;
  //defines the type of state needed
  String typeE;
  
  Prunes(int[][] p, int[][] pe, int[][] pc, String[] movs, int[] c, int[] e, String tc, String te){
    
    this.P = p;
    this.PE = pe;
    this.PC = pc;
    this.Movs = movs;
    this.C = c;
    this.E = e;
    this.typeC = tc;
    this.typeE = te;
    

  }
  
  //slightly redundant- attempted to generate prune tables- decided to use pre generated.
   void generate(){
    for(int i=0; i<P.length; i++){
      for(int j=0; j<P[i].length; j++){
        P[i][j] = -1;
      }
    }
    
    int m = stateToIndex(E);
    
    P[0][m] = 0;
    int len = 0;
    int c;
    
    do{
      c = 0;
      //length of prune table
      for(int p=1; p<4097 ; p++){
        if(P[0][p] == len){
          for(String s : Movs){
            //finds move from list of all
            Move cur = getMove(s, allMoves);
            int[] t = cur.OrME;
            int[] y = indexToState(p, typeC); 
            int[] ty = applyState(y, t, typeC);
            int q = stateToIndex(ty); 
            if(P[0][q] == -1){
              c += 1;
              P[0][q] = len+1;
              c++;
            }
           }
          }     
        }
      
      len += 1;
      //returns much fewer numbers than it should, an interesting experiment into table generation.
      println(c + " positions at distance " + len);
    }
    while(c >0);
     
  }
  
}
