import peasy.*;
PeasyCam cam;

cubes[] cube = new cubes[27];
Move[] allMoves = new Move[18];

int frameCount = 0;
int m = int(random(100, 130));
StringList shuffle = new StringList();
int shuffleCount = 0;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  int index = 0;

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
  allMoves[17].Name = "D2'";

  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new cubes(matrix, x, y, z);
        //forward, down, right
        index++;
      }
    }
  }
  
  Prune1.generate();
  println(P1[0][344]);
}

void draw() {
  background(255); 
  fill(0);
  text("Up", 120, 40, 280, 320);
  text("Down", 120, 270, 280, 320);
  text("Left", 20, 140, 280, 320);
  text("Right", 240, 140, 280, 320);
  frameCount ++;
  
  scale(50);
  for (int i = 0; i < cube.length; i++) {
    cube[i].show();
  }
 
  if(frameCount % 5 == 0){
    if(shuffleCount < m){
      int num = int(random(0, 11));
      shuffle.append(moves_[num]);
      moving(moves_[num]);
      shuffleCount++;
    }
    else{
       Move R = getState(shuffle);
       StringList stage1 = solver(R);
    }
      
  }
  

  

}
