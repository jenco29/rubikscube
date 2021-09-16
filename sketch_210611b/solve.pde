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
    
    Boolean[][][] correctPos = new Boolean[3][3][3];
    
    for(int i=0; i<3; i++){
      for(int j=0; j<3; j++){
        for(int k=0; k<3; k++){
          correctPos[i][j][k] = false;
        }
      }
    }
}

//G=<L, R, F, B, U, D>

solver G = new solver();
G.moves = moves{'L', 'R', 'F', 'B', 'U', 'D'};


int uMoves;
int dMoves;
Boolean bad = false;

if(uMoves % 2 == 0)
{
   bad == true;
 }
 }
else if(dMoves % 2 == 0)
{
  bad == true;
}
 

//G1=<L, R, F, B, U2, D2>

solver G1 = new solver();
G1.moves = moves{'L', 'R', 'F', 'B', 'u', 'd'};

//G2=<L, R, F2, B2, U2, D2>

solver G2 = new solver();
G2.moves = moves{'L', 'R', 'f', 'b', 'u', 'd'};

//G3=<L2, R2, F2, B2, U2, D2>

solver G3 = new solver();
G3.moves = moves{'l', 'r', 'f', 'b', 'u', 'd'};
 
