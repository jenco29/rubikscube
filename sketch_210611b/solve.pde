//this does absolutely nothing yet
class solver{
  
  int n = 6;
  char[] moves = new char[n];
  Boolean[] tried = new Boolean[n];
  int startMove = 0;
  
  solver(){
    for(Boolean f : tried){
    f = false;
    }
    
  
  }
  void dfs(int at){
    if(tried[at]){
      return;
    }
    tried[at] = true;
    char nextMove = moves[at];
    dfs(nextMove);
  
    }
}

//PHASE 0
//G0=<L, R, F, B, U, D>

solver phase0 = new solver();





  
//G1=<L, R, F, B, U2, D2>

  
//G2=<L, R, F2, B2, U2, D2>

  

//G3=<L2, R2, F2, B2, U2, D2>


 
  
