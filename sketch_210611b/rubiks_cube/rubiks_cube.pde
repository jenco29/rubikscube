import peasy.*;
PeasyCam cam;

cubes[] cube = new cubes[27];
Move[] allMoves = new Move[18];


void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  int index = 0;
  int e = 0;
  int c = 0;
  int cn = 0;

  allMoves[0] = Front;
  Move fromt = ApplyMove(Front, Front);
  allMoves[1] = ApplyMove(fromt,Front);//M'
  allMoves[1].Name = "F'";
  allMoves[2] = ApplyMove(Front, Front); //M2
  allMoves[2].Name = "F2";
  allMoves[3] = Back;
  fromt = ApplyMove(Back,Back);
  allMoves[4] = ApplyMove(fromt, Back); 
  allMoves[4].Name = "B'";
  allMoves[5] = ApplyMove(Back, Back);
  allMoves[5].Name = "B2";
  allMoves[6] = Left;
  fromt = ApplyMove(Left, Left);
  allMoves[7] = ApplyMove(fromt, Left);
  allMoves[7].Name = "L'";
  allMoves[8] = ApplyMove(Left, Left);
  allMoves[8].Name = "L2";
  allMoves[9] = Right;
  fromt = ApplyMove(Right, Right);
  allMoves[10] = ApplyMove(fromt, Right);
  allMoves[10].Name = "R'";
  allMoves[11] = ApplyMove(Right, Right);
  allMoves[11].Name = "R2";
  allMoves[12] = Up;
  fromt = ApplyMove(Up, Up);
  allMoves[13] = ApplyMove(fromt, Up);
  allMoves[13].Name = "U'";
  allMoves[14] = ApplyMove(Up, Up);
  allMoves[14].Name = "U2";
  allMoves[15] = Down;
  fromt = ApplyMove(Down, Down);
  allMoves[16] = ApplyMove(fromt, Down);
  allMoves[16].Name = "D'";
  allMoves[17] = ApplyMove(Down, Down);
  allMoves[17].Name = "D2'";

  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new cubes(matrix, x, y, z);
        println(pieceType(index));
        if(pieceType(index) == corner){
          c++;
        }
        if(pieceType(index) == edge){
          e++;
        }
        if(pieceType(index) == centre){
          cn++;
        }
        //forward, down, right
        index++;
      }
    }
  }

  //check correct no. of each piece type
  println(e);
  println(c);
  println(cn);

  
  //SHUFFLE
  //random number of moves
  //could only allow specific combos of moves to avoid cancellation- doing a larger shuffle mitigates this somewhat
  StringList shuffle = new StringList();

  Move thisMove = Identity;
  
  int m = int(random(100, 130));
  for(int i=0; i<m; i++){
    //random moves
    int num = int(random(0, 11));
    shuffle.append(moves_[num]);
    moving(moves_[num]);
    println(moves_[num]);
    Move temp = getMove(moves_[num]);
    Move layout = ApplyMove(thisMove, temp);
    println(layout.Name);
    //thisMove = layout;
  }
  

}


void draw() {
  background(255); 
  fill(0);
  text("Up", 120, 40, 280, 320);
  text("Down", 40, 40, 280, 320);
  
  
  scale(50);
  for (int i = 0; i < cube.length; i++) {
    cube[i].show();
  }
}
