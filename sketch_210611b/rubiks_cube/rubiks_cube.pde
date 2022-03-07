import peasy.*;
PeasyCam cam;

//array of all cubies in the cube
cubes[] cube = new cubes[27];
Move[] allMoves = new Move[18];
Move R; 

int frameCount = 0;
//a random number of random moves are generated
int m = int(random(100, 130));
StringList shuffle = new StringList();
StringList rev = new StringList();
StringList movs = new StringList();
StringList x = new StringList();
void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  int index = 0;      
  R = Identity;
  

  //assign all moves, apply atomic moves to each other to form reverse/ double moves
  allMoves[0] = Front;
  allMoves[1] = Front.ApplyMove(Front.ApplyMove(Front));//M'
  allMoves[1].Name = "F'";
  allMoves[2] = Front.ApplyMove(Front); //M2
  allMoves[2].Name = "F2";

  allMoves[3] = Back;
  allMoves[4] = Back.ApplyMove(Back.ApplyMove(Back)); 
  allMoves[4].Name = "B'";
  allMoves[5] = Back.ApplyMove(Back);
  allMoves[5].Name = "B2";

  allMoves[6] = Left;
  allMoves[7] = Left.ApplyMove(Left.ApplyMove(Left));
  allMoves[7].Name = "L'";
  allMoves[8] = Left.ApplyMove(Left);
  allMoves[8].Name = "L2";

  allMoves[9] = Right;
  allMoves[10] = Right.ApplyMove(Right.ApplyMove(Right));
  allMoves[10].Name = "R'";
  allMoves[11] = Right.ApplyMove(Right);
  allMoves[11].Name = "R2";

  allMoves[12] = Up;
  allMoves[13] = Up.ApplyMove(Up.ApplyMove(Up));
  allMoves[13].Name = "U'";
  allMoves[14] = Up.ApplyMove(Up);
  allMoves[14].Name = "U2";

  allMoves[15] = Down;
  allMoves[16] = Down.ApplyMove(Down.ApplyMove(Down));
  allMoves[16].Name = "D'";
  allMoves[17] = Down.ApplyMove(Down);
  allMoves[17].Name = "D2";

  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        //form each cube at a position x y z between -1 and 1, unit co-ordinates so matrix operations can be applied
        cube[index] = new cubes(matrix, x, y, z);
        //forward, down, right
        index++;
      }
    }
  }
  
 
    for(int i=0; i<m; i++){
    //create list of random moves
      int num = int(random(0, 11));
      shuffle.append(moves_[num]);
    }
  

  plan();
}

Boolean solveFirstFrame = false;
void draw() {
  background(255); 
  fill(0);
  frameCount ++;
  timer();
  
  if(menu){
    menu();
  }
   //<>//
  scale(50);
  for (int i = 0; i < cube.length; i++) {
    //draw all the initialised cubies
    cube[i].show();
  }
  

 
 if(shuf){
   //speed of shuffle
  if(frameCount % 5 == 0){
      if(shuffleCount < m){
        moving(shuffle.get(shuffleCount));
        shuffleCount++;
      }
      else{
        shuf = false;
      }
  
   }
 
 }
    
    //gets the moves from the shuffle and applies the solve to it
      if(sol){
        movs = solveRev(movs); //<>//
        //solve(R); 
        int solveCount = 0;
        if(solveCount < movs.size()){
          moving(movs.get(solveCount)); 
          solveCount++;
        } 
        else{
          sol = false;
        }
      }
    }
      
 
