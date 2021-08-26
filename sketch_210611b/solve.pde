//this does absolutely nothing yet
class solver{
  solver(){
    int phases = 4;
    char[] moves = {'L', 'R', 'U', 'D', 'F', 'B', 'l', 'r', 'u', 'd', 'f', 'b'};
    Boolean solved = false;
    
   
    

  }
  
}

//PHASE 0
//G0=<L, R, F, B, U, D>
int n = 6;
Boolean[] tried = new Boolean[n];

void dfs(int at){
  if(tried[at]){
    return;
  }
  tried[at] = true;
}

int startPos = 0;



  
//G1=<L, R, F, B, U2, D2>

  
//G2=<L, R, F2, B2, U2, D2>

  

//G3=<L2, R2, F2, B2, U2, D2>


 
  
